void sub_100028724(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v8 = v6;
    v9 = *(a1 + 40);
    v10 = SESDefaultLogObject();
    v11 = SESCreateAndLogError();
    (*(v9 + 16))(v9, 0, v11);
  }

  else
  {
    v12 = sub_1003AD1F4(*(a1 + 32), v7);
    v17 = 0;
    v13 = sub_100016EB8(SESEndpointDatabase, v12, v5, &v17);
    v8 = v17;

    v14 = *(a1 + 40);
    if (v8)
    {
      v15 = SESDefaultLogObject();
      v16 = SESCreateAndLogError();
      (*(v14 + 16))(v14, 0, v16);
    }

    else
    {
      (*(v14 + 16))(v14, v13, 0);
    }
  }
}

void sub_100028A48(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v8 = v6;
    v9 = *(a1 + 48);
    v10 = SESDefaultLogObject();
    v11 = SESCreateAndLogError();
    (*(v9 + 16))(v9, 0, v11);
  }

  else
  {
    v12 = *(a1 + 32);
    v13 = sub_1003AD1F4(*(a1 + 40), v7);
    v19 = 0;
    v14 = sub_100017028(SESEndpointDatabase, v12, v13, v5, &v19);
    v8 = v19;

    v15 = *(a1 + 48);
    if (v8)
    {
      v16 = SESDefaultLogObject();
      v18 = *(a1 + 32);
      v17 = SESCreateAndLogError();
      (*(v15 + 16))(v15, 0, v17);
    }

    else
    {
      (*(v15 + 16))(*(a1 + 48), v14, 0);
    }
  }
}

void sub_100028D98(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  v5 = a3;
  if (v5)
  {
    v7 = v5;
    v8 = *(a1 + 56);
    v9 = SESDefaultLogObject();
    v10 = SESCreateAndLogError();
    (*(v8 + 16))(v8, 0, v10);
  }

  else
  {
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    v13 = sub_1003AD1F4(*(a1 + 48), v6);
    v7 = sub_1000171E8(SESEndpointDatabase, v11, v12, v13, v14);

    (*(*(a1 + 56) + 16))(*(a1 + 56), v7 == 0, v7);
  }
}

void sub_10002905C(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = a3;
  if (v5)
  {
    v7 = v5;
    v8 = *(a1 + 48);
    v9 = SESDefaultLogObject();
    v10 = SESCreateAndLogError();
    (*(v8 + 16))(v8, 0, v10);
  }

  else
  {
    v11 = *(a1 + 32);
    v12 = sub_1003AD1F4(*(a1 + 40), v6);
    v7 = sub_100017678(SESEndpointDatabase, v11, v12, v13);

    (*(*(a1 + 48) + 16))(*(a1 + 48), v7 == 0, v7);
  }
}

void sub_100029310(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v8 = v6;
    v9 = *(a1 + 48);
    v10 = SESDefaultLogObject();
    v11 = SESCreateAndLogError();
    (*(v9 + 16))(v9, 0, v11);
  }

  else
  {
    v12 = *(a1 + 32);
    v13 = sub_1003AD1F4(*(a1 + 40), v7);
    v18 = 0;
    v14 = sub_10004F934(SESEndpointDatabase, v12, v13, v5, &v18);
    v8 = v18;

    v15 = *(a1 + 48);
    if (v8)
    {
      v16 = SESDefaultLogObject();
      v17 = SESCreateAndLogError();
      (*(v15 + 16))(v15, 0, v17);
    }

    else
    {
      (*(v15 + 16))(v15, v14, 0);
    }
  }
}

void sub_100029658(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  v5 = a3;
  if (v5)
  {
    v7 = v5;
    v8 = *(a1 + 56);
    v9 = SESDefaultLogObject();
    v10 = SESCreateAndLogError();
    (*(v8 + 16))(v8, 0, v10);
  }

  else
  {
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    v13 = sub_1003AD1F4(*(a1 + 48), v6);
    v7 = sub_10004FAE4(SESEndpointDatabase, v11, v12, v13, v14);

    (*(*(a1 + 56) + 16))(*(a1 + 56), v7 == 0, v7);
  }
}

void sub_10002991C(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = a3;
  if (v5)
  {
    v7 = v5;
    v8 = *(a1 + 48);
    v9 = SESDefaultLogObject();
    v10 = SESCreateAndLogError();
    (*(v8 + 16))(v8, 0, v10);
  }

  else
  {
    v11 = *(a1 + 32);
    v12 = sub_1003AD1F4(*(a1 + 40), v6);
    v7 = sub_10004FE00(SESEndpointDatabase, v11, v12, v13);

    (*(*(a1 + 48) + 16))(*(a1 + 48), v7 == 0, v7);
  }
}

void sub_100029C5C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v11 = v9;
  if (v8 && v7 && !v9)
  {
    v12 = *(a1 + 32);
    v13 = sub_1003AD1F4(*(a1 + 40), v10);
    v33 = 0;
    v14 = sub_1000431F8(SESEndpointDatabase, v12, v13, v8, &v33);
    v11 = v33;

    if (v11)
    {
      v15 = *(a1 + 48);
      v16 = SESDefaultLogObject();
      v30 = *(a1 + 32);
      v17 = SESCreateAndLogError();
      (*(v15 + 16))(v15, 0, v17);
    }

    else
    {
      v32 = 0;
      v16 = sub_1000433C4(SESEndpointDatabase, v14, &v32);
      v11 = v32;
      if (v11)
      {
        v21 = *(a1 + 48);
        v17 = SESDefaultLogObject();
        v31 = *(a1 + 32);
        v22 = SESCreateAndLogError();
        (*(v21 + 16))(v21, 0, v22);
      }

      else
      {
        v23 = sub_1003AF3C4(v7, v20);
        v24 = [v23 casdCertificate];
        v17 = DERDecodeData(v24);

        v26 = sub_1003AF3C4(v7, v25);
        v27 = [v26 casdCertificateRSA];
        v22 = DERDecodeData(v27);

        v28 = [v16 secureElementAttestation];
        v29 = [SEEndPointBindingAttestationRequestItems withSubCAAttestation:v28 casdECDSACertificate:v17 casdRSACertificate:v22];

        (*(*(a1 + 48) + 16))();
      }
    }
  }

  else
  {
    v18 = *(a1 + 48);
    v19 = SESEnsureError();
    (*(v18 + 16))(v18, 0, v19);
  }
}

void sub_10002A0D8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  if (v8)
  {
    v9 = v8;
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v34 = 0;
    v10 = sub_100059808(SESEndpointDatabase, a3, &v34);
    v11 = v34;
    if (v10)
    {
      v12 = v11 == 0;
    }

    else
    {
      v12 = 0;
    }

    if (v12)
    {
      v28 = a1;
      v14 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v10, "count")}];
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v15 = v10;
      v16 = [v15 countByEnumeratingWithState:&v30 objects:v39 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v31;
        while (2)
        {
          for (i = 0; i != v17; i = i + 1)
          {
            if (*v31 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = [*(*(&v30 + 1) + 8 * i) identifier];
            v21 = [v20 hexStringAsData];

            v29 = 0;
            v22 = sub_10004B454(v7, v21, &v29);
            v23 = v29;
            if (v23)
            {
              v9 = v23;
              v27 = SESDefaultLogObject();
              if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412546;
                v36 = v21;
                v37 = 2112;
                v38 = v9;
                _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "Error querying %@ is suspended : %@", buf, 0x16u);
              }

              (*(*(v28 + 32) + 16))();
              goto LABEL_22;
            }

            v24 = [SESEndPointContainerInfo withAppletAID:v21 isSuspended:v22];
            [v14 addObject:v24];
          }

          v17 = [v15 countByEnumeratingWithState:&v30 objects:v39 count:16];
          if (v17)
          {
            continue;
          }

          break;
        }
      }

      v25 = SESDefaultLogObject();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v26 = [v14 count];
        *buf = 67109120;
        LODWORD(v36) = v26;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "Returning %d containers", buf, 8u);
      }

      (*(*(v28 + 32) + 16))();
      v9 = 0;
    }

    else
    {
      v9 = v11;
      v13 = *(a1 + 32);
      v14 = SESEnsureError();
      (*(v13 + 16))(v13, 0, v14);
    }

LABEL_22:
  }
}

void sub_10002A780(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(a1 + 48);
    v5 = *(*(a1 + 48) + 16);

    v5();
  }

  else
  {
    v6 = [a2 filter:&stru_1004C1DB0];
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = [NSString stringWithUTF8String:"[SESEndpointAndKeyXPCServer(SEEndPointXPC) getSESEndpointTSMDictionary:reply:]_block_invoke"];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10002A900;
    v12[3] = &unk_1004C18F0;
    v10 = *(a1 + 48);
    v13 = v6;
    v14 = v10;
    v11 = v6;
    [v7 endPointServiceAvailableWithProxy:v8 reason:v9 reply:v12];
  }
}

BOOL sub_10002A8B0(id a1, SEEndPoint *a2)
{
  v2 = a2;
  v3 = [(SEEndPoint *)v2 endPointType]!= 3 && [(SEEndPoint *)v2 endPointType]!= 4;

  return v3;
}

void sub_10002A900(uint64_t a1, void *a2, void *a3, void *a4)
{
  v82 = a2;
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    v9 = v8;
    (*(*(a1 + 40) + 16))();
    goto LABEL_65;
  }

  v94 = 0;
  v10 = sub_100059808(SESEndpointDatabase, v7, &v94);
  v11 = v94;
  if (v10)
  {
    v12 = v11 == 0;
  }

  else
  {
    v12 = 0;
  }

  if (!v12)
  {
    v9 = v11;
    v13 = *(a1 + 40);
    v14 = SESEnsureError();
    (*(v13 + 16))(v13, 0, v14);
    goto LABEL_64;
  }

  v69 = v7;
  v70 = a1;
  v72 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v10 count]);
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  v68 = v10;
  obj = v10;
  v15 = [obj countByEnumeratingWithState:&v90 objects:v106 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v91;
    do
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v91 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = [*(*(&v90 + 1) + 8 * i) identifier];
        v20 = [v19 hexStringAsData];

        v89 = 0;
        v21 = sub_10004B454(v82, v20, &v89);
        v22 = v89;
        if (v22)
        {
          v9 = v22;
          v65 = SESDefaultLogObject();
          if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v103 = v20;
            v104 = 2112;
            v105 = v9;
            _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_ERROR, "Error querying %@ is suspended : %@", buf, 0x16u);
          }

          v81 = v20;

          (*(*(v70 + 40) + 16))();
          v10 = v68;
LABEL_62:
          v14 = v72;
          goto LABEL_63;
        }

        v23 = [v20 asHexString];
        v24 = [v23 isEqualToString:@"A00000085801010100000001"];

        if ((v24 & 1) == 0)
        {
          v100[0] = @"appletAid";
          v25 = [v20 asHexString];
          v101[0] = v25;
          v100[1] = @"state";
          if (v21)
          {
            v26 = 143;
          }

          else
          {
            v26 = 15;
          }

          v27 = [NSNumber numberWithUnsignedInt:v26];
          v101[1] = v27;
          v28 = [NSDictionary dictionaryWithObjects:v101 forKeys:v100 count:2];
          [v72 addObject:v28];
        }
      }

      v16 = [obj countByEnumeratingWithState:&v90 objects:v106 count:16];
    }

    while (v16);
  }

  obj = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [*(v70 + 32) count]);
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  v29 = *(v70 + 32);
  v30 = [v29 countByEnumeratingWithState:&v85 objects:v99 count:16];
  if (!v30)
  {
    goto LABEL_55;
  }

  v31 = v30;
  v32 = @"keyId";
  v80 = *v86;
  v81 = v29;
  while (2)
  {
    v33 = 0;
    v73 = v31;
    do
    {
      if (*v86 != v80)
      {
        objc_enumerationMutation(v29);
      }

      v34 = *(*(&v85 + 1) + 8 * v33);
      v35 = objc_opt_new();
      v36 = [v34 appletIdentifier];
      v37 = [v36 asHexString];
      [v35 setObject:v37 forKeyedSubscript:@"appletAid"];

      v38 = [v34 publicKeyIdentifier];
      v39 = [v38 asHexString];
      [v35 setObject:v39 forKeyedSubscript:v32];

      if ([v34 endPointType] == 1)
      {
        v40 = [v34 revocationAttestation];
        if (v40)
        {
          v41 = 129;
        }

        else
        {
          v71 = [v34 trackingReceipt];
          if (v71)
          {
            v41 = 15;
          }

          else
          {
            v41 = 21;
          }
        }

        v50 = [NSNumber numberWithUnsignedInt:v41];
        [v35 setObject:v50 forKeyedSubscript:@"state"];

        if (!v40)
        {
        }
      }

      else if ([v34 endPointType] == 5)
      {
        v42 = [@"A000000909ACCE5501" hexStringAsData];
        v43 = [v34 publicKeyIdentifier];
        v84 = 0;
        v44 = sub_10004A138(v82, v42, v43, &v84);
        v9 = v84;

        if (v9)
        {
          v66 = SESDefaultLogObject();
          v10 = v68;
          if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
          {
            v67 = [v34 publicKeyIdentifier];
            *buf = 138412546;
            v103 = v67;
            v104 = 2112;
            v105 = v9;
            _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_ERROR, "Error querying %@ endpointState : %@", buf, 0x16u);
          }

          (*(*(v70 + 40) + 16))();
          v7 = v69;
          goto LABEL_62;
        }

        if (v44 == 2)
        {
          v45 = v35;
          v46 = &off_1004DC978;
        }

        else if (v44 == 1)
        {
          v45 = v35;
          v46 = &off_1004DC960;
        }

        else
        {
          if (v44)
          {
            goto LABEL_48;
          }

          v45 = v35;
          v46 = &off_1004DC948;
        }

        [v45 setObject:v46 forKeyedSubscript:@"state"];
      }

      else
      {
        v47 = [v34 revocationAttestation];
        if (v47)
        {
          v48 = 129;
        }

        else
        {
          v48 = 15;
        }

        v49 = [NSNumber numberWithUnsignedInt:v48];
        [v35 setObject:v49 forKeyedSubscript:@"state"];
      }

LABEL_48:
      v51 = [v34 revocationAttestation];

      if (v51)
      {
        v52 = [v34 revocationAttestation];
        v53 = [v52 asHexString];
        [v35 setObject:v53 forKeyedSubscript:@"terminationAttestation"];

        v54 = [v34 carOEMProprietaryData];

        if (v54)
        {
          v97[0] = @"version";
          v79 = [v34 carOEMProprietaryData];
          v78 = [v79 version];
          v98[0] = v78;
          v97[1] = @"cipherText";
          v77 = [v34 carOEMProprietaryData];
          v76 = [v77 cipherText];
          v75 = [v76 asHexString];
          v98[1] = v75;
          v97[2] = @"ephemeralPK";
          v74 = [v34 carOEMProprietaryData];
          v55 = [v74 ephemeralPublicKeydata];
          v56 = [v55 asHexString];
          v98[2] = v56;
          v97[3] = @"receiverPKID";
          v57 = [v34 carOEMProprietaryData];
          v58 = [v57 receiverPublicKeyHash];
          [v58 asHexString];
          v60 = v59 = v32;
          v98[3] = v60;
          v61 = [NSDictionary dictionaryWithObjects:v98 forKeys:v97 count:4];
          [v35 setObject:v61 forKeyedSubscript:@"carOemProprietaryData"];

          v32 = v59;
          v31 = v73;
        }

        v62 = [v34 terminatedByTaskID];

        if (v62)
        {
          v63 = [v34 terminatedByTaskID];
          [v35 setObject:v63 forKeyedSubscript:@"terminatedByTaskID"];
        }
      }

      [obj addObject:v35];

      v33 = v33 + 1;
      v29 = v81;
    }

    while (v31 != v33);
    v31 = [v81 countByEnumeratingWithState:&v85 objects:v99 count:16];
    if (v31)
    {
      continue;
    }

    break;
  }

LABEL_55:

  v64 = *(v70 + 40);
  v95[0] = @"PTKeys";
  v95[1] = @"ptaContainers";
  v14 = v72;
  v96[0] = obj;
  v96[1] = v72;
  v81 = [NSDictionary dictionaryWithObjects:v96 forKeys:v95 count:2];
  (*(v64 + 16))(v64);
  v9 = 0;
  v10 = v68;
  v7 = v69;
LABEL_63:

LABEL_64:
LABEL_65:
}

void sub_10002B9A0(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = v15;
  if (v14 && v13 && v12 && v11 && !v15)
  {
    if ([v14 endPointType] == 1)
    {
      v17 = [v14 certificates];
      v18 = [v17 count];

      if (v18 == 3)
      {
        v19 = [v14 appletIdentifier];
        v20 = [*(a1 + 32) hexStringAsData];
        v21 = *(a1 + 40);
        v62[0] = 0;
        v22 = sub_10004B5EC(v11, v19, v20, v21, 1u, v62);
        v23 = v62[0];

        if (v23)
        {
          (*(*(a1 + 48) + 16))();
LABEL_24:

          goto LABEL_25;
        }

        v32 = getCertificatePublicKey();
        v33 = [v14 publicKey];
        v34 = [v32 isEqual:v33];

        if (v34)
        {
          v35 = [v14 certificates];
          v36 = [v35 mutableCopy];

          [v36 setObject:v22 atIndexedSubscript:2];
          [v14 setCertificates:v36];
          v37 = SecCertificateCreateWithData(0, v22);
          if (v37)
          {
            v60 = 0u;
            v61 = 0u;
            v58 = 0u;
            v59 = 0u;
            v56 = 0u;
            v57 = 0u;
            v54 = 0u;
            v55 = 0u;
            v52 = 0u;
            v53 = 0u;
            v50 = 0u;
            v51 = 0u;
            v49 = 0u;
            memset(v48, 0, sizeof(v48));
            v38 = [SEEndPoint parsePTAExtension:@"1.3.6.1.4.1.41577.5.4" certificate:v37 specification:&off_1004C1DF8 output:v48];
            if (v38)
            {
              v23 = v38;
            }

            else
            {
              [SEEndPointConfiguration configurationWithOpt1:*v49 opt2:*v50];
              v44 = v43 = v32;
              [v14 setConfiguration:v44];

              v32 = v43;
              v23 = sub_10003D080(SESEndpointDatabase, v13, v14, v12);
            }

            (*(*(a1 + 48) + 16))();
            goto LABEL_23;
          }

          v46 = *(a1 + 48);
          v41 = SESDefaultLogObject();
          v45 = [v22 base64];
          SESCreateAndLogError();
          v42 = v47 = v32;
          (*(v46 + 16))(v46, 0, v42);

          v32 = v47;
        }

        else
        {
          v39 = *(a1 + 48);
          v36 = SESDefaultLogObject();
          v37 = [v22 base64];
          v40 = SESCreateAndLogError();
          (*(v39 + 16))(v39, 0, v40);
        }

        v23 = 0;
LABEL_23:

        goto LABEL_24;
      }

      v29 = *(a1 + 48);
      v27 = SESDefaultLogObject();
      v30 = [v14 certificates];
      [v30 count];
      v31 = SESCreateAndLogError();
      (*(v29 + 16))(v29, 0, v31);
    }

    else
    {
      v26 = *(a1 + 48);
      v27 = SESDefaultLogObject();
      [v14 endPointType];
      v28 = SESCreateAndLogError();
      (*(v26 + 16))(v26, 0, v28);
    }
  }

  else
  {
    v24 = *(a1 + 48);
    v25 = SESEnsureError();
    (*(v24 + 16))(v24, 0, v25);
  }

LABEL_25:
}

void sub_10002C778(uint64_t a1)
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_100019DE8;
  v21 = sub_100019DF8;
  v22 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_100019DE8;
  v15 = sub_100019DF8;
  v16 = 0;
  v2 = [*(a1 + 32) database];
  v3 = *(a1 + 40);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10002C9F8;
  v10[3] = &unk_1004C1E10;
  v10[4] = &v17;
  v10[5] = &v11;
  sub_1003ACDB4(v2, v3, v10);

  if (v18[5] || !v12[5])
  {
    v4 = *(a1 + 48);
    v5 = SESEnsureError();
    (*(v4 + 16))(v4, 0, v5);
  }

  else
  {
    v6 = v12[5];
    v5 = TransformIf();
    v7 = SESDefaultLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = [v12[5] count];
      v9 = [v5 count];
      *buf = 67109376;
      v24 = v8;
      v25 = 1024;
      v26 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Got %d entities, %d transformed", buf, 0xEu);
    }

    (*(*(a1 + 48) + 16))();
  }

  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(&v17, 8);
}

void sub_10002C9C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_10002C9F8(uint64_t a1, void *a2, void *a3)
{
  v6 = a3;
  if (v6)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  }

  else
  {
    v7 = *(*(a1 + 32) + 8);
    obj = *(v7 + 40);
    v8 = sub_10003C954(SESEndpointDatabase, a2, &obj);
    objc_storeStrong((v7 + 40), obj);
    v9 = *(*(a1 + 40) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }
}

void sub_10002CB8C(uint64_t a1)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_100019DE8;
  v12 = sub_100019DF8;
  v13 = 0;
  v2 = [*(a1 + 32) database];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10002CCC8;
  v5[3] = &unk_1004C1E58;
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v7 = &v8;
  v5[4] = v4;
  v6 = v3;
  sub_1003ACDB4(v2, v6, v5);

  (*(*(a1 + 48) + 16))(*(a1 + 48), v9[5] == 0);
  _Block_object_dispose(&v8, 8);
}

void sub_10002CCB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10002CCC8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v11 = v5;
  if (v5)
  {
    v6 = *(*(a1 + 48) + 8);
    v7 = v5;
    v8 = *(v6 + 40);
    *(v6 + 40) = v7;
  }

  else
  {
    v9 = [*(a1 + 32) _cleanupAppletsWithNoEndpoints:*(a1 + 40) handle:a2];
    v10 = *(*(a1 + 48) + 8);
    v8 = *(v10 + 40);
    *(v10 + 40) = v9;
  }
}

void sub_10002CE08(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  if (v7)
  {
    v4 = *(a1 + 32);
    v5 = SESDefaultLogObject();
    v6 = SESCreateAndLogError();
    (*(v4 + 16))(v4, 0, v6);
  }

  else
  {
    v5 = Transform();
    (*(*(a1 + 32) + 16))();
  }
}

id sub_10002CEF4(id a1, CTCellularPlanItem *a2)
{
  v2 = a2;
  v3 = [SEStorageManagementCellularPlans alloc];
  v4 = [(CTCellularPlanItem *)v2 iccid];
  v5 = [(CTCellularPlanItem *)v2 userLabel];

  v6 = [v5 label];
  v7 = [(SEStorageManagementCellularPlans *)v3 initWithIdentifier:v4 label:v6];

  return v7;
}

id sub_10002D094(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  objc_opt_self();
  v6 = objc_opt_new();
  v7 = *(v6 + 16);
  *(v6 + 16) = v4;
  v8 = v4;

  v9 = *(v6 + 24);
  *(v6 + 24) = v5;

  *(v6 + 8) = 1;

  return v6;
}

BOOL sub_10002D244(uint64_t a1, id *a2)
{
  objc_opt_self();
  v28 = 0u;
  memset(v27, 0, sizeof(v27));
  v26[0] = [*a2 DERItem];
  v26[1] = v3;
  v4 = DERParseSequence(v26, DERNumSignedCertCrlItemSpecs, &DERSignedCertCrlItemSpecs, v27, 0x30uLL);
  if (v4)
  {
    v5 = v4;
    v6 = SESDefaultLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      *&buf[4] = v5;
      v7 = "Failed to decode certificate? %d";
LABEL_7:
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, v7, buf, 8u);
    }
  }

  else
  {
    v25[0] = 0;
    v25[1] = 0;
    v24 = 0;
    v8 = DERParseBitString(&v28, v25, &v24);
    if (!v8)
    {
      *buf = 0u;
      v32 = 0u;
      v12 = DERParseSequence(v25, *(&ECDSASigValueSpec + 4), ECDSASigValueSpec, buf, 0x20uLL);
      if (v12)
      {
        v13 = v12;
        v14 = SESDefaultLogObject();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          *v29 = 67109120;
          LODWORD(v30) = v13;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Failed to parse ECDSASigValue? %d", v29, 8u);
        }

        v10 = 0;
      }

      else
      {
        if (!sub_10002D63C(SESSignatureFixer, buf))
        {
          return 0;
        }

        v14 = [NSMutableData dataWithLength:1];
        v15 = encodeSequence();
        [v14 appendData:v15];

        *&v28 = [v14 mutableBytes];
        *(&v28 + 1) = [v14 length];
        v16 = encodeSequence();
        v10 = v16 != 0;
        v17 = SESDefaultLogObject();
        v18 = v17;
        if (v16)
        {
          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            *v29 = 0;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Fixed incorrect DER encoding on attestation!", v29, 2u);
          }

          v19 = SESDefaultLogObject();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
          {
            v20 = [*a2 base64EncodedStringWithOptions:0];
            *v29 = 138412290;
            v30 = v20;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "%@", v29, 0xCu);
          }

          v21 = SESDefaultLogObject();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
          {
            v22 = [v16 base64EncodedStringWithOptions:0];
            *v29 = 138412290;
            v30 = v22;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "%@", v29, 0xCu);
          }

          v23 = v16;
          *a2 = v16;
        }

        else
        {
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            *v29 = 0;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Failed to encode SignedCert?", v29, 2u);
          }
        }
      }

      return v10;
    }

    v9 = v8;
    v6 = SESDefaultLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      *&buf[4] = v9;
      v7 = "Failed to DERParseBitString? %d";
      goto LABEL_7;
    }
  }

  return 0;
}

uint64_t sub_10002D63C(uint64_t a1, unint64_t *a2)
{
  objc_opt_self();
  v3 = sub_10002D8E8(SESSignatureFixer, a2);
  return v3 | sub_10002D8E8(SESSignatureFixer, a2 + 2);
}

BOOL sub_10002D68C(uint64_t a1, id *a2)
{
  v3 = objc_opt_self();
  v17[0] = [*a2 DERItem];
  v17[1] = v4;
  memset(v16, 0, sizeof(v16));
  v5 = DERParseSequence(v17, *(&ECDSASigValueSpec + 4), ECDSASigValueSpec, v16, 0x20uLL);
  v6 = v5 == 0;
  if (v5)
  {
    v7 = v5;
    v8 = SESDefaultLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v19) = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Failed to parse ECDSASigValue? %d", buf, 8u);
    }
  }

  else
  {
    if (!sub_10002D63C(v3, v16))
    {
      return 0;
    }

    v8 = encodeSequence();
    v9 = SESDefaultLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Fixed incorrect DER encoding on signature!", buf, 2u);
    }

    v10 = SESDefaultLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = [*a2 base64EncodedStringWithOptions:0];
      *buf = 138412290;
      v19 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    v12 = SESDefaultLogObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v13 = [v8 base64EncodedStringWithOptions:0];
      *buf = 138412290;
      v19 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    v14 = v8;
    *a2 = v8;
  }

  return v6;
}

uint64_t sub_10002D8E8(uint64_t a1, unint64_t *a2)
{
  objc_opt_self();
  v3 = a2[1];
  if (v3 < 2 || (v4 = **a2) != 0)
  {
    v4 = 0;
  }

  else
  {
    v6 = v3 - 1;
    v7 = (*a2 + 1);
    while ((*v7 & 0x80000000) == 0)
    {
      *a2 = v7;
      a2[1] = v6;
      if (v6-- <= 1)
      {
        v4 = 1;
        return v4 & 1;
      }

      v9 = *v7++;
      v4 = 1;
      if (v9)
      {
        return v4 & 1;
      }
    }
  }

  return v4 & 1;
}

void sub_10002D9A4(id a1)
{
  v1 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  attr = dispatch_queue_attr_make_with_qos_class(v1, QOS_CLASS_USER_INITIATED, 0);

  v2 = [SESDarwinNotificationMonitor alloc];
  v3 = dispatch_queue_create("com.apple.seserviced.sesdarwinnotification", attr);
  v4 = [(SESDarwinNotificationMonitor *)v2 initWithQueue:v3];
  v5 = qword_10050CC18;
  qword_10050CC18 = v4;
}

void sub_10002DEE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10002DF0C(void *a1)
{
  [*(a1[4] + 16) setObject:a1[5] forKey:a1[6]];
  result = [*(a1[4] + 24) containsObject:a1[6]];
  if (result)
  {
    result = [*(a1[4] + 24) removeObject:a1[6]];
    *(*(a1[7] + 8) + 24) = 1;
  }

  return result;
}

id sub_10002DFC0(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  objc_opt_self();
  SSEGetSignedDeviceData();

  if (a3)
  {
    v5 = SESDefaultLogObject();
    *a3 = SESCreateAndLogError();
  }

  return 0;
}

void *sub_10002E084(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = sub_10002E3C8(4098, 0, 0);
  if (v7)
  {
    v28 = 0;
    v8 = sub_100035204(v5, v6, v7, 1, &v28);
    v9 = v28;
    if (v9)
    {
      if (a3)
      {
        v10 = SESDefaultLogObject();
        v11 = [v7 asHexString];
LABEL_10:
        *a3 = SESCreateAndLogError();

        a3 = 0;
      }
    }

    else
    {
      v26 = [v8 DERItem];
      v27 = v13;
      v24 = 0u;
      v25 = 0u;
      if (!DERParseSequenceSpec())
      {
        v18 = 0;
        v19 = &v18;
        v20 = 0x3032000000;
        v21 = sub_10002E440;
        v22 = sub_10002E450;
        v23 = objc_opt_new();
        v17[0] = _NSConcreteStackBlock;
        v17[1] = 3221225472;
        v17[2] = sub_10002E458;
        v17[3] = &unk_1004C2190;
        v17[4] = &v18;
        if (DERDecodeSequenceWithBlock(&v25, v17))
        {
          if (a3)
          {
            v14 = SESDefaultLogObject();
            v16 = [v8 asHexString];
            *a3 = SESCreateAndLogError();

            a3 = 0;
          }
        }

        else
        {
          a3 = v19[5];
        }

        _Block_object_dispose(&v18, 8);

        goto LABEL_16;
      }

      if (a3)
      {
        v10 = SESDefaultLogObject();
        v11 = [v8 asHexString];
        goto LABEL_10;
      }
    }

LABEL_16:

    goto LABEL_17;
  }

  if (a3)
  {
    v12 = SESDefaultLogObject();
    *a3 = SESCreateAndLogError();

    a3 = 0;
  }

LABEL_17:

  return a3;
}

void sub_10002E3B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10002E3C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  if (a2 && a3 && (encodeSequenceSpec(), (v4 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v5 = 0;
  }

  else
  {
    v5 = sub_100032E10(a1, v4);
  }

  return v5;
}

uint64_t sub_10002E440(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10002E458(uint64_t a1, uint64_t a2)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  v3 = [NSData dataWithDERItem:a2 + 8];
  [v2 addObject:v3];

  return 0;
}

id sub_10002E4AC(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v95 = a1;
  v13 = a2;
  v14 = a3;
  v93 = a4;
  v15 = a5;
  v94 = a6;
  v16 = [v14 dataUsingEncoding:4];
  v92 = v13;
  if ([v16 length])
  {
    v17 = [v16 length];
    if (a7 && v17 > 0x20)
    {
      goto LABEL_4;
    }
  }

  else if (a7)
  {
LABEL_4:
    v18 = SESDefaultLogObject();
    v82 = v14;
    v83 = [v16 length];
    *a7 = SESCreateAndLogError();
  }

  v91 = v16;
  v19 = [SESTLV TLVWithTag:24352 value:v16, v82, v83];
  v109[0] = v19;
  v20 = [SESTLV TLVWithTag:81 unsignedShort:256];
  v109[1] = v20;
  v21 = [SESTLV TLVWithTag:82 unsignedShort:257];
  v109[2] = v21;
  v22 = [NSArray arrayWithObjects:v109 count:3];
  v23 = [v22 mutableCopy];

  v24 = v23;
  if ([v15 length])
  {
    v25 = [SESTLV TLVWithTag:83 value:v15];
    [v23 addObject:v25];
  }

  v26 = v94;
  if (v94)
  {
    v27 = a7;
    v28 = v23;
    v29 = v15;
    v30 = +[NSMutableData dataWithCapacity:](NSMutableData, "dataWithCapacity:", [v94 count]);
    v102 = 0u;
    v103 = 0u;
    v104 = 0u;
    v105 = 0u;
    v31 = v94;
    v32 = [v31 countByEnumeratingWithState:&v102 objects:v108 count:16];
    if (v32)
    {
      v33 = v32;
      v34 = *v103;
      do
      {
        for (i = 0; i != v33; i = i + 1)
        {
          if (*v103 != v34)
          {
            objc_enumerationMutation(v31);
          }

          [v30 appendU8:{objc_msgSend(*(*(&v102 + 1) + 8 * i), "unsignedCharValue")}];
        }

        v33 = [v31 countByEnumeratingWithState:&v102 objects:v108 count:16];
      }

      while (v33);
    }

    v36 = [SESTLV TLVWithTag:85 value:v30];
    v24 = v28;
    [v28 addObject:v36];

    v15 = v29;
    v26 = v94;
    a7 = v27;
  }

  v37 = v14;
  v38 = v95;
  v39 = v92;
  v40 = sub_1003AF1FC(v95, v92);
  if (v40)
  {
    v41 = v40;
    if (a7)
    {
      v42 = v40;
      v43 = 0;
      *a7 = v41;
    }

    else
    {
      v43 = 0;
    }

    v66 = v91;
    v38 = v95;
    goto LABEL_58;
  }

  [v93 unsignedCharValue];
  v90 = v24;
  v44 = [SESTLV TLVWithTag:32551 children:v24];
  v45 = [v44 asData];
  v101 = 0;
  v46 = sub_1003AEF50();
  v47 = 0;

  v48 = v46;
  v41 = v47;
  if (v47 || !v46)
  {
    v66 = v91;
    if (a7)
    {
      v67 = v41;
      v48 = v46;
      v43 = 0;
      *a7 = v41;
    }

    else
    {
      v43 = 0;
    }

    v24 = v90;
    goto LABEL_57;
  }

  v87 = v15;
  v85 = a7;
  v88 = v37;
  v89 = v46;
  v49 = sub_1003B0934(v46);
  v50 = [SESTLV TLVsWithData:v49];

  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  v98 = 0u;
  obj = v50;
  v51 = [obj countByEnumeratingWithState:&v97 objects:v107 count:16];
  if (v51)
  {
    v52 = v51;
    v53 = 0;
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v57 = *v98;
    while (1)
    {
      for (j = 0; j != v52; j = j + 1)
      {
        if (*v98 != v57)
        {
          objc_enumerationMutation(obj);
        }

        v59 = *(*(&v97 + 1) + 8 * j);
        v60 = [v59 tag];
        if (v60 > 24374)
        {
          if (v60 == 24375)
          {
            v65 = [v59 value];
            v62 = v54;
            v54 = v65;
          }

          else
          {
            if (v60 != 32585)
            {
              continue;
            }

            v63 = v59;
            v62 = v55;
            v55 = v63;
          }
        }

        else if (v60 == 67)
        {
          v64 = v59;
          v62 = v56;
          v56 = v64;
        }

        else
        {
          if (v60 != 89)
          {
            continue;
          }

          v61 = [v59 value];
          v62 = v53;
          v53 = v61;
        }
      }

      v52 = [obj countByEnumeratingWithState:&v97 objects:v107 count:16];
      if (!v52)
      {
        goto LABEL_48;
      }
    }
  }

  v53 = 0;
  v54 = 0;
  v55 = 0;
  v56 = 0;
LABEL_48:

  if (v56 && v55 && v53 && v54)
  {
    v68 = [SESTLV TLVWithTag:65 unsignedChar:1];
    v106 = v68;
    v69 = [NSArray arrayWithObjects:&v106 count:1];
    v70 = [v69 mutableCopy];

    [v70 addObject:v56];
    [v70 addObjectsFromArray:v90];
    [v70 addObject:v55];
    v71 = [SESTLV TLVWithTag:0 children:v70];
    v72 = [v71 value];
    v73 = v54;
    v74 = [v72 mutableCopy];

    v86 = v53;
    [v74 appendData:v53];
    v75 = [NSData dataWithHexString:@"526CB83FB5C615FF3BA8EFE9671A35C4"];
    [v74 appendData:v75];

    v76 = v74;
    v54 = v73;
    v77 = [v55 value];
    v78 = [SESTLV TLVWithData:?];
    v79 = [v78 value];
    v43 = [SESLegacyKeyCreateResponse withPublicKeyData:v79 CASDSignature:v73 keySlot:v93 legacyKeyAttestation:v76];

    v38 = v95;
    v39 = v92;
    v37 = v88;
  }

  else
  {
    v38 = v95;
    v39 = v92;
    v37 = v88;
    if (!v85)
    {
      v43 = 0;
      v41 = 0;
      goto LABEL_56;
    }

    v86 = v53;
    v70 = SESDefaultLogObject();
    sub_1003B0934(v89);
    v80 = v84 = v54;
    v77 = [v80 base64];
    SESCreateAndLogError();
    *v85 = v43 = 0;
    v76 = v80;
    v54 = v84;
  }

  v53 = v86;
  v41 = 0;
LABEL_56:

  v15 = v87;
  v26 = v94;
  v24 = v90;
  v66 = v91;
  v48 = v89;
LABEL_57:

LABEL_58:

  return v43;
}

id sub_10002ECB8(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v68 = a1;
  v67 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v66 = a6;
  v63 = v12;
  v15 = +[SESTLV TLVWithTag:unsignedChar:](SESTLV, "TLVWithTag:unsignedChar:", 196, [v12 unsignedCharValue]);
  v76[0] = v15;
  v16 = [SESTLV TLVWithTag:197 unsignedChar:0];
  v76[1] = v16;
  v17 = [SESTLV TLVWithTag:144 unsignedChar:0];
  v75[0] = v17;
  v62 = v13;
  v18 = [SESTLV TLVWithTag:145 value:v13];
  v75[1] = v18;
  v61 = v14;
  v19 = [SESTLV TLVWithTag:148 value:v14];
  v75[2] = v19;
  v20 = [NSArray arrayWithObjects:v75 count:3];
  v21 = [SESTLV TLVWithTag:32525 children:v20];
  v76[2] = v21;
  v22 = [NSArray arrayWithObjects:v76 count:3];

  v23 = v68;
  v24 = v66;

  v25 = v67;
  v26 = [v67 asHexString];
  v27 = [SESTLV TLVWithTag:0 children:v22];
  v28 = [v27 value];
  v73 = 0;
  v29 = sub_100057B60(v68, v26, v28, v66, &v73);
  v30 = v73;

  v31 = v30;
  v64 = v29;
  if (v30)
  {
    if (a7)
    {
      v32 = v30;
      v33 = 0;
      *a7 = v30;
    }

    else
    {
      v33 = 0;
    }

    v50 = v62;
    v49 = v63;
    v51 = v61;
    goto LABEL_36;
  }

  v34 = [SESTLV TLVsWithData:v29];
  v35 = [v34 find:&stru_1004C21D0];
  v60 = v34;
  if (!v35)
  {
    v50 = v62;
    v49 = v63;
    v51 = v61;
    v40 = a7;
    if (a7)
    {
      v53 = SESDefaultLogObject();
      *a7 = SESCreateAndLogError();

      v35 = 0;
      v39 = 0;
      v40 = 0;
    }

    else
    {
      v39 = 0;
    }

    v33 = 0;
    goto LABEL_35;
  }

  v58 = v35;
  v59 = v22;
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v36 = [v35 children];
  v37 = [v36 countByEnumeratingWithState:&v69 objects:v74 count:16];
  if (!v37)
  {

    v40 = 0;
    v39 = 0;
    v50 = v62;
    v49 = v63;
    v51 = v61;
    v52 = a7;
LABEL_29:
    if (v52)
    {
LABEL_30:
      v55 = SESDefaultLogObject();
      v57 = [v64 base64];
      *a7 = SESCreateAndLogError();

      v23 = v68;
    }

    goto LABEL_31;
  }

  v38 = v37;
  v39 = 0;
  v40 = 0;
  v41 = *v70;
  while (2)
  {
    for (i = 0; i != v38; i = i + 1)
    {
      if (*v70 != v41)
      {
        objc_enumerationMutation(v36);
      }

      v43 = *(*(&v69 + 1) + 8 * i);
      v44 = [v43 tag];
      if (v44 == 24375)
      {
        [v43 value];
        v40 = v47 = v40;
      }

      else
      {
        if (v44 != 151)
        {
          continue;
        }

        v45 = [v43 value];
        v46 = [v45 length];

        if (v46 != 1)
        {
          if (a7)
          {
            v54 = SESDefaultLogObject();
            *a7 = SESCreateAndLogError();
          }

          v33 = 0;
          v25 = v67;
          v23 = v68;
          v50 = v62;
          v49 = v63;
          v51 = v61;
          v24 = v66;
          goto LABEL_32;
        }

        v47 = [v43 value];
        v48 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", *[v47 bytes]);

        v39 = v48;
      }
    }

    v38 = [v36 countByEnumeratingWithState:&v69 objects:v74 count:16];
    if (v38)
    {
      continue;
    }

    break;
  }

  if (!v40)
  {
    v25 = v67;
    v23 = v68;
    v50 = v62;
    v49 = v63;
    v51 = v61;
    v24 = v66;
    if (a7)
    {
      goto LABEL_30;
    }

LABEL_31:
    v33 = 0;
    goto LABEL_32;
  }

  v25 = v67;
  v23 = v68;
  v50 = v62;
  v49 = v63;
  v51 = v61;
  v52 = a7;
  v24 = v66;
  if (!v39)
  {
    goto LABEL_29;
  }

  v33 = [SESLegacyKeySignResponse withSignature:v40 localValidationVerified:v39];
LABEL_32:
  v35 = v58;
  v22 = v59;
LABEL_35:

  v31 = 0;
LABEL_36:

  return v33;
}

id sub_10002F2BC(void *a1, void *a2, void *a3, void *a4, void *a5, uint64_t a6, void *a7)
{
  v11 = a1;
  v64 = a2;
  v12 = a3;
  v13 = a4;
  v63 = a5;
  v58 = v12;
  v59 = +[SESTLV TLVWithTag:unsignedChar:](SESTLV, "TLVWithTag:unsignedChar:", 196, [v12 unsignedCharValue]);
  v72[0] = v59;
  v14 = [SESTLV TLVWithTag:197 unsignedChar:1];
  v72[1] = v14;
  v15 = [SESTLV TLVWithTag:144 unsignedChar:0];
  v71[0] = v15;
  v16 = [NSData randomData:8];
  v17 = [SESTLV TLVWithTag:145 value:v16];
  v71[1] = v17;
  v57 = v13;
  v18 = [SESTLV TLVWithTag:148 value:v13];
  v71[2] = v18;
  v19 = [NSArray arrayWithObjects:v71 count:3];
  v20 = [SESTLV TLVWithTag:32525 children:v19];
  v72[2] = v20;
  v21 = v11;
  v22 = [NSArray arrayWithObjects:v72 count:3];

  v24 = v63;
  v23 = v64;

  v25 = [v64 asHexString];
  v26 = [SESTLV TLVWithTag:0 children:v22];
  v27 = [v26 value];
  v69 = 0;
  v28 = sub_100057B6C(v21, v25, v27, v63, a6, &v69);
  v29 = v69;

  if (v29)
  {
    if (a7)
    {
      v30 = v29;
      v31 = 0;
      *a7 = v29;
    }

    else
    {
      v31 = 0;
    }

    v49 = v57;
    v48 = v58;
    goto LABEL_36;
  }

  v32 = [SESTLV TLVsWithData:v28];
  v33 = [v32 find:&stru_1004C21F0];
  v60 = v32;
  if (!v33)
  {
    v49 = v57;
    v31 = a7;
    if (a7)
    {
      v50 = SESDefaultLogObject();
      *a7 = SESCreateAndLogError();

      v33 = 0;
      v37 = 0;
      v38 = 0;
      v31 = 0;
    }

    else
    {
      v37 = 0;
      v38 = 0;
    }

    v48 = v58;
    goto LABEL_35;
  }

  v55 = v33;
  v56 = v28;
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v34 = [v33 children];
  v35 = [v34 countByEnumeratingWithState:&v65 objects:v70 count:16];
  if (!v35)
  {

    v38 = 0;
    v37 = 0;
    v49 = v57;
    v48 = v58;
    v47 = a7;
LABEL_29:
    if (v47)
    {
LABEL_30:
      v52 = SESDefaultLogObject();
      *v47 = SESCreateAndLogError();
    }

    goto LABEL_31;
  }

  v36 = v35;
  v54 = v22;
  v37 = 0;
  v38 = 0;
  v39 = *v66;
  while (2)
  {
    for (i = 0; i != v36; i = i + 1)
    {
      if (*v66 != v39)
      {
        objc_enumerationMutation(v34);
      }

      v41 = *(*(&v65 + 1) + 8 * i);
      v42 = [v41 tag];
      if (v42 == 24375)
      {
        [v41 value];
        v38 = v45 = v38;
      }

      else
      {
        if (v42 != 151)
        {
          continue;
        }

        v43 = [v41 value];
        v44 = [v43 length];

        if (v44 != 1)
        {
          if (a7)
          {
            v51 = SESDefaultLogObject();
            *a7 = SESCreateAndLogError();
          }

          v31 = 0;
          v22 = v54;
          v24 = v63;
          v23 = v64;
          v49 = v57;
          v48 = v58;
          goto LABEL_32;
        }

        v45 = [v41 value];
        v46 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", *[v45 bytes]);

        v37 = v46;
      }
    }

    v36 = [v34 countByEnumeratingWithState:&v65 objects:v70 count:16];
    if (v36)
    {
      continue;
    }

    break;
  }

  v47 = a7;
  if (!v38)
  {
    v22 = v54;
    v24 = v63;
    v23 = v64;
    v49 = v57;
    v48 = v58;
    if (a7)
    {
      goto LABEL_30;
    }

LABEL_31:
    v31 = 0;
    goto LABEL_32;
  }

  v22 = v54;
  v24 = v63;
  v23 = v64;
  v49 = v57;
  v48 = v58;
  if (!v37)
  {
    goto LABEL_29;
  }

  v31 = [SESLegacyKeySignResponse withSignature:v38 localValidationVerified:v37];
LABEL_32:
  v33 = v55;
  v28 = v56;
LABEL_35:

  v29 = 0;
LABEL_36:

  return v31;
}

id sub_10002F8AC(void *a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v9 = a1;
  v10 = a2;
  v11 = a4;
  v12 = SESDefaultLogObject();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf) = 67109120;
    DWORD1(buf) = a3;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "ptc_createKey %hx", &buf, 8u);
  }

  v13 = sub_10002FFE8(v9, v10);
  if (v13)
  {
    v14 = v13;
    v66 = 0;
    v15 = sub_1000300E4(v9, v10, &v66);
    v16 = v66;
    if (v16)
    {
      v18 = v16;
      if (a5)
      {
        v19 = SESDefaultLogObject();
        *a5 = SESCreateAndLogError();
      }

      goto LABEL_7;
    }

    v64 = 0;
    v65 = 0;
    v21 = sub_1003AF3C4(v9, v17);
    v22 = [v21 seid];
    v23 = SSECreateSecureElementACLRequest(0xFFFFFFFF, v22, v11, v15, &v65, &v64);

    if (v23)
    {
      if (!a5)
      {
        v18 = 0;
LABEL_7:
        v20 = 0;
LABEL_46:

        goto LABEL_47;
      }

      v24 = SESDefaultLogObject();
      SESCreateAndLogError();
      v18 = 0;
      *a5 = v20 = 0;
LABEL_45:

      goto LABEL_46;
    }

    v24 = v65;
    v55 = v64;
    v25 = SESDefaultLogObject();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      v26 = [v24 asHexString];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v26;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "AssetACLRequest : %@", &buf, 0xCu);
    }

    v27 = SESDefaultLogObject();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      v28 = [(__CFData *)v55 asHexString];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v28;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEBUG, "assetACLRequestAttestation : %@", &buf, 0xCu);
    }

    v63 = 256;
    v54 = [NSData dataWithBytes:&v63 length:2];
    v59 = [v54 DERItem];
    v60 = v29;
    v61 = 0;
    v62 = 0;
    v30 = encodeSequenceSpec();
    v31 = v30;
    if (!v30)
    {
      if (a5)
      {
        v42 = SESDefaultLogObject();
        *a5 = SESCreateAndLogError();
      }

      v18 = 0;
      v20 = 0;
      v43 = v54;
      goto LABEL_44;
    }

    v58 = 1;
    v57 = __rev16(a3);
    *&buf = &v58;
    *(&buf + 1) = 1;
    v70 = &v57;
    v71 = 2;
    v72 = [v30 DERItem];
    v73 = v32;
    v74 = [v24 DERItem];
    v75 = v33;
    v76 = [(__CFData *)v55 DERItem];
    v77 = v34;
    v35 = sub_10002E3C8(40960, &buf, &off_1004C1F20);
    v36 = v35;
    if (v35)
    {
      v52 = v31;
      v53 = v35;
      v56 = 0;
      v37 = sub_100035204(v9, v10, v35, 1, &v56);
      v18 = v56;
      if (v18 || !v37)
      {
        if (a5)
        {
          v45 = SESDefaultLogObject();
          v50 = [v53 asHexString];
          *a5 = SESCreateAndLogError();
        }

        v20 = 0;
        v43 = v54;
        v44 = v37;
        v31 = v52;
        goto LABEL_42;
      }

      v51 = v37;
      v38 = SESDefaultLogObject();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
      {
        v39 = [v53 asHexString];
        *v67 = 138412290;
        v68 = v39;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_INFO, "KeyCommand Success: %@", v67, 0xCu);
      }

      v31 = v52;
      if (v14 <= 2)
      {
        v40 = sub_10003023C(v51);
        if (!v40)
        {
          v47 = SESDefaultLogObject();
          if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
          {
            *v67 = 0;
            _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_INFO, "Key is invalid! Delete & recreating!", v67, 2u);
          }

          v48 = sub_100030394(v9, v10, a3);
          v18 = v48;
          if (!v48)
          {
            v20 = sub_10002F8AC(v9, v10, a3, v11, a5);
            goto LABEL_58;
          }

          if (a5)
          {
            v49 = v48;
            v20 = 0;
            *a5 = v18;
            goto LABEL_58;
          }

LABEL_30:
          v20 = 0;
LABEL_58:
          v43 = v54;
          v44 = v51;
          goto LABEL_42;
        }

        if (v40 == 4279897)
        {
          if (a5)
          {
            v41 = SESDefaultLogObject();
            *a5 = SESCreateAndLogError();
          }

          v18 = 0;
          goto LABEL_30;
        }
      }

      v44 = v51;
      v18 = 0;
      v20 = v44;
    }

    else
    {
      if (!a5)
      {
        v18 = 0;
        v20 = 0;
        v43 = v54;
        goto LABEL_43;
      }

      v53 = 0;
      v44 = SESDefaultLogObject();
      SESCreateAndLogError();
      v18 = 0;
      *a5 = v20 = 0;
    }

    v43 = v54;
LABEL_42:

    v36 = v53;
LABEL_43:

LABEL_44:
    goto LABEL_45;
  }

  if (!a5)
  {
    v20 = 0;
    goto LABEL_48;
  }

  v18 = SESDefaultLogObject();
  SESCreateAndLogError();
  *a5 = v20 = 0;
LABEL_47:

LABEL_48:

  return v20;
}

uint64_t sub_10002FFE8(void *a1, void *a2)
{
  v3 = a1;
  v4 = v3;
  v5 = dword_10050CC2C;
  if (!dword_10050CC2C)
  {
    v6 = sub_1003AF1FC(v3, a2);
    if (v6)
    {
      v7 = v6;
      v5 = dword_10050CC2C;
    }

    else
    {
      v8 = [@"80A0800000000B30090201010202000104000000" hexStringAsData];
      v15 = 0;
      v9 = sub_1003AEB5C(v4, v8, &v15);
      v10 = v15;
      v7 = v10;
      if (v9 && !v10)
      {
        dword_10050CC2C = 1;
        v11 = sub_1003B0934(v9);
        v14[0] = [v11 DERItem];
        v14[1] = v12;

        DERDecodeSequenceContentWithBlock(v14, &stru_1004C2230);
      }

      v5 = dword_10050CC2C;
    }
  }

  return v5;
}

void *sub_1000300E4(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a1;
  v7 = SESDefaultLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "", buf, 2u);
  }

  v8 = sub_10002E3C8(0x2000, 0, 0);
  v13 = 0;
  v9 = sub_100035204(v6, v5, v8, 1, &v13);

  v10 = v13;
  if (v10)
  {
    if (a3)
    {
      v11 = SESDefaultLogObject();
      *a3 = SESCreateAndLogError();

      a3 = 0;
    }
  }

  else
  {
    a3 = v9;
  }

  return a3;
}

uint64_t sub_10003023C(void *a1)
{
  v1 = a1;
  v2 = DERParseSequenceSpec();
  if (v2)
  {
    v3 = v2;
    v4 = SESDefaultLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = [v1 asHexString];
      *buf = 67109378;
      *&buf[4] = v3;
      *&buf[8] = 2112;
      *&buf[10] = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Failed to decode PTC Key output %d %@", buf, 0x12u);
    }

    v6 = 4279897;
  }

  else
  {
    memset(buf, 0, 32);
    CC_SHA256(0, 0, buf);
    v6 = buf[0] - 162 <= 0xFFFFFFFD && (buf[0] != 255 || (buf[1] & 0xFE) != 160);
  }

  return v6;
}

id sub_100030394(void *a1, void *a2, unsigned int a3)
{
  v5 = a1;
  v6 = a2;
  v7 = SESDefaultLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "", buf, 2u);
  }

  v19 = 1;
  v20 = __rev16(a3);
  *buf = &v19;
  v16 = 1;
  v17 = &v20;
  v18 = 2;
  v8 = sub_10002E3C8(40961, buf, &off_1004C1F70);
  if (v8)
  {
    v14 = 0;
    v9 = sub_100035204(v5, v6, v8, 1, &v14);
    v10 = v14;
    if (v10)
    {
      v11 = SESDefaultLogObject();
      v12 = SESCreateAndLogError();
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v10 = SESDefaultLogObject();
    v12 = SESCreateAndLogError();
  }

  return v12;
}

id sub_100030548(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v13 = a1;
  v14 = a2;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  if ([v18 isEqualToString:kSecKeyAlgorithmECDSASignatureMessageX962SHA256])
  {
    v19 = [@"0001" hexStringAsData];
    v20 = sub_1000306A8(v13, v14, v15, v16, v17, v19, a7);
LABEL_5:

    goto LABEL_6;
  }

  if (a7)
  {
    v19 = SESDefaultLogObject();
    SESCreateAndLogError();
    *a7 = v20 = 0;
    goto LABEL_5;
  }

  v20 = 0;
LABEL_6:

  return v20;
}

id sub_1000306A8(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v13 = a1;
  v14 = a2;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = SESDefaultLogObject();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "", buf, 2u);
  }

  if (v14 && v15 && v16 && v17 && v18)
  {
    v66 = 0;
    v67 = 0;
    v20 = sub_1000312FC(v13, v14, v16, v15, @"osgn", &v67, &v66);
    v21 = v67;
    v22 = v66;
    v49 = v22;
    if (v20)
    {
      if (a7)
      {
        v23 = v20;
        v24 = 0;
        *a7 = v20;
      }

      else
      {
        v24 = 0;
      }

      goto LABEL_33;
    }

    v47 = v13;
    v48 = a7;
    v65 = 1;
    v25 = v22;
    v26 = [v16 slot];
    v27 = __rev16([v26 number]);

    v64 = v27;
    *buf = &v65;
    v53 = 1;
    v54 = &v64;
    v55 = 2;
    v46 = v17;
    v56 = [v17 DERItem];
    v57 = v28;
    v58 = [v18 DERItem];
    v59 = v29;
    v60 = [v21 DERItem];
    v61 = v30;
    v62 = [v25 DERItem];
    v63 = v31;
    v32 = sub_10002E3C8(49152, buf, &off_1004C1F80);
    v45 = v32;
    if (!v32)
    {
      if (v48)
      {
        v44 = SESDefaultLogObject();
        SESCreateAndLogError();
        v20 = 0;
        *v48 = v24 = 0;
        v13 = v47;
      }

      else
      {
        v20 = 0;
        v24 = 0;
        v13 = v47;
      }

      goto LABEL_32;
    }

    v33 = v32;
    v34 = SESDefaultLogObject();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
    {
      v35 = [v33 asHexString];
      LODWORD(v68) = 138412290;
      *(&v68 + 4) = v35;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEBUG, "signCommandData : %@", &v68, 0xCu);
    }

    v51 = 0;
    v13 = v47;
    v36 = sub_100035204(v47, v14, v33, 1, &v51);
    v20 = v51;
    v17 = v46;
    v43 = v36;
    if (v20 || !v36)
    {
      if (v48)
      {
        v39 = SESDefaultLogObject();
        v40 = [v16 slot];
        [v40 number];
        *v48 = SESCreateAndLogError();
      }
    }

    else
    {
      v68 = 0uLL;
      v50[1] = [v36 DERItem];
      v50[2] = v37;
      if (!DERParseSequenceSpec())
      {
        v38 = [NSData dataWithDERItem:&v68];
        v50[0] = v38;
        sub_10002D68C(SESSignatureFixer, v50);
        v24 = v50[0];
        goto LABEL_30;
      }

      if (v48)
      {
        v38 = SESDefaultLogObject();
        v42 = [v36 asHexString];
        *v48 = SESCreateAndLogError();

        v24 = 0;
LABEL_30:

        goto LABEL_31;
      }
    }

    v24 = 0;
LABEL_31:

LABEL_32:
LABEL_33:

    goto LABEL_34;
  }

  if (!a7)
  {
    v24 = 0;
    goto LABEL_35;
  }

  v21 = SESDefaultLogObject();
  SESCreateAndLogError();
  *a7 = v24 = 0;
LABEL_34:

LABEL_35:

  return v24;
}

id sub_100030BD0(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v13 = a1;
  v14 = a2;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  if (([v18 isEqualToString:kSecKeyAlgorithmECDSASignatureMessageX962SHA256] & 1) != 0 || objc_msgSend(v18, "isEqualToString:", kSecKeyAlgorithmECDSASignatureDigestX962SHA256))
  {
    if ([v17 length] == 32)
    {
      v19 = [@"0002" hexStringAsData];
      v20 = sub_1000306A8(v13, v14, v15, v16, v17, v19, a7);
LABEL_10:

      goto LABEL_12;
    }

    if (a7)
    {
      v19 = SESDefaultLogObject();
      [v17 length];
LABEL_9:
      SESCreateAndLogError();
      *a7 = v20 = 0;
      goto LABEL_10;
    }
  }

  else if (a7)
  {
    v19 = SESDefaultLogObject();
    goto LABEL_9;
  }

  v20 = 0;
LABEL_12:

  return v20;
}

id sub_100030D98(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v13 = a1;
  v14 = a2;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = SESDefaultLogObject();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "", buf, 2u);
  }

  if (v14)
  {
    if (v15)
    {
      v20 = [v16 key];

      if (v18)
      {
        if (v17 && v20)
        {
          v63 = 0;
          v64 = 0;
          v21 = sub_1000312FC(v13, v14, v16, v15, @"ock", &v64, &v63);
          v22 = v64;
          v23 = v63;
          v49 = v23;
          if (v21)
          {
            if (a7)
            {
              v24 = v21;
              v25 = 0;
              *a7 = v21;
            }

            else
            {
              v25 = 0;
            }

            goto LABEL_35;
          }

          v48 = v13;
          v62 = 1;
          v26 = v23;
          v27 = [v16 slot];
          v28 = __rev16([v27 number]);

          v61 = v28;
          *buf = &v62;
          v52 = 1;
          v53 = &v61;
          v54 = 2;
          v55 = [v17 DERItem];
          v56 = v29;
          v57 = [v22 DERItem];
          v58 = v30;
          v59 = [v26 DERItem];
          v60 = v31;
          if (([v18 isEqualToString:kSecKeyAlgorithmECDHKeyExchangeStandard] & 1) == 0)
          {
            if (!a7)
            {
              v21 = 0;
              v25 = 0;
              v13 = v48;
LABEL_35:

              goto LABEL_36;
            }

            v39 = SESDefaultLogObject();
            SESCreateAndLogError();
            v21 = 0;
            *a7 = v25 = 0;
            v40 = v39;
            v13 = v48;
LABEL_34:

            goto LABEL_35;
          }

          v32 = sub_10002E3C8(49156, buf, &off_1004C1FA0);
          v47 = v32;
          if (!v32)
          {
            v13 = v48;
            if (a7)
            {
              v46 = SESDefaultLogObject();
              SESCreateAndLogError();
              v21 = 0;
              *a7 = v25 = 0;
            }

            else
            {
              v21 = 0;
              v25 = 0;
            }

            goto LABEL_33;
          }

          v33 = v32;
          v34 = SESDefaultLogObject();
          v13 = v48;
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
          {
            v35 = [v33 asHexString];
            LODWORD(v65) = 138412290;
            *(&v65 + 4) = v35;
            _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEBUG, "echangeCommandData : %@", &v65, 0xCu);

            v33 = v47;
          }

          v50 = 0;
          v36 = sub_100035204(v48, v14, v33, 1, &v50);
          v21 = v50;
          v45 = v36;
          if (v21)
          {
            if (a7)
            {
              v37 = SESDefaultLogObject();
              v43 = [v16 slot];
              [v43 number];
              *a7 = SESCreateAndLogError();
              v38 = v43;
LABEL_30:
            }
          }

          else
          {
            v65 = 0uLL;
            [v36 DERItem];
            if (!DERParseSequenceSpec())
            {
              v25 = [NSData dataWithDERItem:&v65];
              goto LABEL_32;
            }

            if (a7)
            {
              v44 = SESDefaultLogObject();
              v42 = [v36 asHexString];
              v37 = v44;
              *a7 = SESCreateAndLogError();
              v38 = v42;
              goto LABEL_30;
            }
          }

          v25 = 0;
LABEL_32:

LABEL_33:
          v40 = v47;
          goto LABEL_34;
        }
      }
    }
  }

  if (!a7)
  {
    v25 = 0;
    goto LABEL_37;
  }

  v22 = SESDefaultLogObject();
  SESCreateAndLogError();
  *a7 = v25 = 0;
LABEL_36:

LABEL_37:

  return v25;
}

id sub_1000312FC(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v9 = 0;
  v7 = sub_100034EF0(a1, a2, a3, a4, a5, a6, a7, &v9);

  return v7;
}

id sub_100031354(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9, void *a10)
{
  v69 = a1;
  v17 = a2;
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v22 = a7;
  v23 = a8;
  v24 = a9;
  v25 = SESDefaultLogObject();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "", &buf, 2u);
  }

  if (v17 && v18 && v19 && v20 && v21 && v23)
  {
    v67 = v22;
    v73 = 0;
    v74 = 0;
    v26 = sub_1000312FC(v69, v17, v19, v18, @"oe", &v74, &v73);
    v66 = v74;
    v65 = v73;
    v68 = v20;
    if (v26)
    {
      v27 = v21;
      v28 = v24;
      if (a10)
      {
        v29 = v26;
        v30 = 0;
        *a10 = v26;
      }

      else
      {
        v30 = 0;
      }

      v31 = v66;
      goto LABEL_52;
    }

    if ([v23 isEqualToString:@"kSecKeyAlgorithmECIESEncryptionStandardVariableIVX963SHA256AESCBC"])
    {
      v32 = @"0001";
    }

    else
    {
      if (([v23 isEqualToString:kSecKeyAlgorithmECIESEncryptionStandardVariableIVX963SHA256AESGCM] & 1) == 0)
      {
        v27 = v21;
        v28 = v24;
        if (a10)
        {
          v53 = SESDefaultLogObject();
          *a10 = SESCreateAndLogError();
        }

        v26 = 0;
        v30 = 0;
        v31 = v66;

        goto LABEL_52;
      }

      v32 = @"1001";
    }

    v33 = [(__CFString *)v32 hexStringAsData];
    v34 = SESDefaultLogObject();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v33;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "algorithmData : %@", &buf, 0xCu);
    }

    v72 = 1;
    v35 = [v19 slot];
    v64 = v33;
    v36 = __rev16([v35 number]);

    v71 = v36;
    *&buf = &v72;
    *(&buf + 1) = 1;
    v78 = &v71;
    v79 = 2;
    v80 = [v20 DERItem];
    v81 = v37;
    v82 = [v21 DERItem];
    v83 = v38;
    v84 = [v67 DERItem];
    v85 = v39;
    v86 = [v64 DERItem];
    v87 = v40;
    v88 = [v66 DERItem];
    v89 = v41;
    v90 = [v65 DERItem];
    v91 = v42;
    v92 = 0;
    v93 = 0;
    if (v24)
    {
      [v24 length];
      [v24 bytes];
      v62 = encodeItem();
      v92 = [v62 DERItem];
      v93 = v43;
    }

    else
    {
      v62 = 0;
    }

    v44 = sub_10002E3C8(49153, &buf, &off_1004C1FF0);
    v63 = v44;
    if (v44)
    {
      v45 = v44;
      v46 = SESDefaultLogObject();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
      {
        v47 = [v45 asHexString];
        *v75 = 138412290;
        *&v75[4] = v47;
        _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEBUG, "encryptCommandData : %@", v75, 0xCu);

        v45 = v63;
      }

      v70 = 0;
      v48 = sub_100035204(v69, v17, v45, 1, &v70);
      v26 = v70;
      v61 = v48;
      if (v26 || !v48)
      {
        v27 = v21;
        v28 = v24;
        if (a10)
        {
          v54 = SESDefaultLogObject();
          v55 = [v19 slot];
          [v55 number];
          *a10 = SESCreateAndLogError();
        }
      }

      else
      {
        v27 = v21;
        *v75 = 0u;
        v76 = 0u;
        [v48 DERItem];
        if (!DERParseSequenceSpec() && *&v75[8])
        {
          v28 = v24;
          v49 = [NSData dataWithDERItem:v75];
          if (*(&v76 + 1))
          {
            v50 = v49;
            v51 = [NSData dataWithBytes:v76 + 2 length:*(&v76 + 1) - 2];
            v49 = v50;
            v52 = v51;
          }

          else
          {
            v52 = 0;
          }

          v31 = v66;
          v57 = v62;
          v59 = v52;
          v60 = v49;
          v30 = [AuthenticatedEncryptionResult withCipherText:v49 authenticationTag:v52];
          goto LABEL_49;
        }

        v28 = v24;
        if (a10)
        {
          v56 = SESDefaultLogObject();
          v59 = [v48 asHexString];
          v60 = v56;
          SESCreateAndLogError();
          *a10 = v30 = 0;
          v31 = v66;
          v57 = v62;
LABEL_49:

          goto LABEL_50;
        }
      }

      v30 = 0;
    }

    else
    {
      v27 = v21;
      v28 = v24;
      if (!a10)
      {
        v26 = 0;
        v30 = 0;
        v31 = v66;
        v57 = v62;
LABEL_51:

LABEL_52:
        v22 = v67;
        goto LABEL_53;
      }

      v61 = SESDefaultLogObject();
      SESCreateAndLogError();
      v26 = 0;
      *a10 = v30 = 0;
    }

    v31 = v66;
    v57 = v62;
LABEL_50:

    goto LABEL_51;
  }

  if (!a10)
  {
    v30 = 0;
    goto LABEL_54;
  }

  v68 = v20;
  v27 = v21;
  v28 = v24;
  v31 = SESDefaultLogObject();
  SESCreateAndLogError();
  *a10 = v30 = 0;
LABEL_53:

  v24 = v28;
  v21 = v27;
  v20 = v68;
LABEL_54:

  return v30;
}

id sub_100031AA0(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9, void *a10, void *a11)
{
  v18 = a1;
  v19 = a2;
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v23 = a6;
  v74 = a7;
  v24 = a8;
  v73 = a9;
  v25 = a10;
  v26 = SESDefaultLogObject();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEBUG, "", &buf, 2u);
  }

  v72 = v18;
  if (v19 && v20 && v21 && v22 && v23 && v24)
  {
    v70 = v25;
    v78 = 0;
    v79 = 0;
    v27 = sub_1000312FC(v18, v19, v21, v20, @"od", &v79, &v78);
    v28 = v79;
    v29 = v78;
    v69 = v28;
    v71 = v19;
    if (v27)
    {
      v30 = v20;
      v31 = v24;
      v32 = v22;
      v33 = v23;
      if (a11)
      {
        v34 = v27;
        v35 = 0;
        *a11 = v27;
      }

      else
      {
        v35 = 0;
      }

      goto LABEL_49;
    }

    if ([@"kSecKeyAlgorithmECIESEncryptionStandardVariableIVX963SHA256AESCBC" isEqualToString:v24])
    {
      v38 = @"0001";
    }

    else
    {
      if (CFStringCompare(kSecKeyAlgorithmECIESEncryptionStandardVariableIVX963SHA256AESGCM, v24, 0))
      {
        v30 = v20;
        v31 = v24;
        v32 = v22;
        if (a11)
        {
          v39 = SESDefaultLogObject();
          *a11 = SESCreateAndLogError();
        }

        v67 = 0;
        v27 = 0;
        v35 = 0;
        goto LABEL_48;
      }

      v38 = @"1001";
    }

    v66 = v29;
    v40 = [(__CFString *)v38 hexStringAsData];
    v41 = SESDefaultLogObject();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v40;
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEBUG, "algorithmData : %@", &buf, 0xCu);
    }

    v77 = 1;
    v42 = [v21 slot];
    v43 = __rev16([v42 number]);

    v76 = v43;
    *&buf = &v77;
    *(&buf + 1) = 1;
    v82 = &v76;
    v83 = 2;
    v84 = [v22 DERItem];
    v85 = v44;
    v86 = [v23 DERItem];
    v87 = v45;
    v88 = [v74 DERItem];
    v89 = v46;
    v67 = v40;
    v90 = [v40 DERItem];
    v91 = v47;
    v92 = [v69 DERItem];
    v93 = v48;
    v29 = v66;
    v94 = [v66 DERItem];
    v95 = v49;
    v96 = 0u;
    v97 = 0u;
    if (v73)
    {
      [v73 length];
      [v73 bytes];
      v65 = encodeItem();
      *&v96 = [v65 DERItem];
      *(&v96 + 1) = v50;
    }

    else
    {
      v65 = 0;
    }

    v51 = v18;
    v52 = v70;
    if (v70)
    {
      [v70 length];
      [v70 bytes];
      v52 = encodeItem();
      *&v97 = [v52 DERItem];
      *(&v97 + 1) = v53;
    }

    v35 = a11;
    v68 = sub_10002E3C8(49154, &buf, &off_1004C2010);
    if (v68)
    {
      v54 = SESDefaultLogObject();
      if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
      {
        [v68 asHexString];
        v63 = v52;
        v56 = v55 = v51;
        LODWORD(v80) = 138412290;
        *(&v80 + 4) = v56;
        _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEBUG, "decryptCommandData : %@", &v80, 0xCu);

        v51 = v55;
        v52 = v63;
      }

      v75 = 0;
      v57 = sub_100035204(v51, v19, v68, 1, &v75);
      v27 = v75;
      v64 = v57;
      if (!v27 && v57)
      {
        v80 = 0uLL;
        [v57 DERItem];
        if (DERParseSequenceSpec() || !*(&v80 + 1))
        {
          if (a11)
          {
            v60 = SESDefaultLogObject();
            v62 = [v57 asHexString];
            *a11 = SESCreateAndLogError();
          }

          v35 = 0;
        }

        else
        {
          v35 = [NSData dataWithDERItem:&v80];
        }

        goto LABEL_45;
      }

      v35 = a11;
      if (!a11)
      {
LABEL_45:
        v30 = v20;
        goto LABEL_46;
      }

      v30 = v20;
      v58 = SESDefaultLogObject();
      v59 = [v21 slot];
      [v59 number];
      *a11 = SESCreateAndLogError();

      v35 = 0;
    }

    else
    {
      if (!a11)
      {
        v30 = v20;
        v31 = v24;
        v27 = 0;
        goto LABEL_47;
      }

      v30 = v20;
      v64 = SESDefaultLogObject();
      SESCreateAndLogError();
      v27 = 0;
      *a11 = v35 = 0;
    }

LABEL_46:
    v31 = v24;

LABEL_47:
    v32 = v22;

LABEL_48:
    v33 = v23;

LABEL_49:
    v36 = v73;
    v37 = v69;
    v25 = v70;
    goto LABEL_50;
  }

  v36 = v73;
  if (!a11)
  {
    v35 = 0;
    goto LABEL_51;
  }

  v71 = v19;
  v30 = v20;
  v31 = v24;
  v32 = v22;
  v33 = v23;
  v37 = SESDefaultLogObject();
  SESCreateAndLogError();
  *a11 = v35 = 0;
LABEL_50:

  v23 = v33;
  v22 = v32;
  v24 = v31;
  v20 = v30;
  v19 = v71;
LABEL_51:

  return v35;
}

id sub_100032238(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9, void *a10, void *a11, void *a12, void *a13, void *a14, void *a15)
{
  v88 = a1;
  v92 = a2;
  v91 = a3;
  v93 = a4;
  v22 = a5;
  v23 = a6;
  v24 = a7;
  v25 = a8;
  v86 = a9;
  v90 = a10;
  v26 = a11;
  v84 = a12;
  v89 = a13;
  v27 = a14;
  v28 = SESDefaultLogObject();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEBUG, "", buf, 2u);
  }

  v29 = v23;
  v85 = v22;
  if (v92 && v91 && v93 && v22 && v23 && v90 && v89)
  {
    v83 = v24;
    v122 = 0;
    v123 = 0;
    v30 = sub_1000312FC(v88, v92, v93, v91, @"oect", &v123, &v122);
    v81 = v123;
    v82 = v122;
    if (v30)
    {
      if (a15)
      {
        v31 = v30;
        v32 = 0;
        *a15 = v30;
      }

      else
      {
        v32 = 0;
      }

      v35 = v25;
      v36 = v86;
      v37 = v26;
      v38 = v84;
      v33 = v88;
      v34 = v81;
      goto LABEL_63;
    }

    if ([@"kSecKeyAlgorithmECIESEncryptionStandardVariableIVX963SHA256AESCBC" isEqualToString:v90])
    {
      v39 = @"0001";
    }

    else
    {
      if (CFStringCompare(kSecKeyAlgorithmECIESEncryptionStandardVariableIVX963SHA256AESGCM, v90, 0))
      {
        if (!a15)
        {
          v30 = 0;
          v32 = 0;
          v35 = v25;
          v36 = v86;
          v37 = v26;
          v38 = v84;
          v33 = v88;
          v34 = v81;

LABEL_63:
          v24 = v83;
          goto LABEL_64;
        }

        v40 = SESDefaultLogObject();
        SESCreateAndLogError();
        v80 = 0;
        v30 = 0;
        *a15 = v32 = 0;
        v41 = v40;
        goto LABEL_30;
      }

      v39 = @"1001";
    }

    v42 = [(__CFString *)v39 hexStringAsData];
    v80 = v42;
    if ([@"kSecKeyAlgorithmECIESEncryptionStandardVariableIVX963SHA256AESCBC" isEqualToString:v89])
    {
      v43 = @"0001";
      goto LABEL_32;
    }

    if (CFStringCompare(kSecKeyAlgorithmECIESEncryptionStandardVariableIVX963SHA256AESGCM, v89, 0) == kCFCompareEqualTo)
    {
      v43 = @"1001";
LABEL_32:
      v45 = [(__CFString *)v43 hexStringAsData];
      v121 = 1;
      v46 = [v93 slot];
      v47 = __rev16([v46 number]);

      v120 = v47;
      *buf = &v121;
      v96 = 1;
      v97 = &v120;
      v98 = 2;
      v99 = [v22 DERItem];
      v100 = v48;
      v29 = v23;
      v101 = [v23 DERItem];
      v102 = v49;
      v103 = [v83 DERItem];
      v104 = v50;
      v105 = [v42 DERItem];
      v106 = v51;
      v37 = v26;
      v107 = [v26 DERItem];
      v108 = v52;
      v79 = v45;
      v109 = [v45 DERItem];
      v110 = v53;
      v111 = [v27 DERItem];
      v112 = v54;
      v34 = v81;
      v113 = [v81 DERItem];
      v114 = v55;
      v115 = [v82 DERItem];
      v116 = v56;
      v117 = 0u;
      v118 = 0u;
      v119 = 0u;
      v35 = v25;
      if (v25)
      {
        [v25 length];
        [v25 bytes];
        v78 = encodeItem();
        *&v117 = [v78 DERItem];
        *(&v117 + 1) = v57;
      }

      else
      {
        v78 = 0;
      }

      v36 = v86;
      v38 = v84;
      v33 = v88;
      if (v86)
      {
        [v86 length];
        [v86 bytes];
        v77 = encodeItem();
        *&v118 = [v77 DERItem];
        *(&v118 + 1) = v58;
        if (v84)
        {
LABEL_37:
          [v84 length];
          [v84 bytes];
          v76 = encodeItem();
          *&v119 = [v76 DERItem];
          *(&v119 + 1) = v59;
          goto LABEL_40;
        }
      }

      else
      {
        v77 = 0;
        if (v84)
        {
          goto LABEL_37;
        }
      }

      v76 = 0;
LABEL_40:
      v60 = sub_10002E3C8(49155, buf, &off_1004C2030);
      v87 = v60;
      if (!v60)
      {
        if (a15)
        {
          v75 = SESDefaultLogObject();
          SESCreateAndLogError();
          v30 = 0;
          *a15 = v32 = 0;
        }

        else
        {
          v30 = 0;
          v32 = 0;
        }

        goto LABEL_61;
      }

      v61 = v60;
      v62 = SESDefaultLogObject();
      if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
      {
        v63 = [v61 asHexString];
        LODWORD(v124) = 138412290;
        *(&v124 + 4) = v63;
        _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEBUG, "transcodeCommandData : %@", &v124, 0xCu);

        v61 = v87;
      }

      v94 = 0;
      v64 = sub_100035204(v88, v92, v61, 1, &v94);
      v30 = v94;
      v74 = v64;
      if (v30 || !v64)
      {
        v32 = a15;
        if (!a15)
        {
LABEL_60:

LABEL_61:
          v41 = v79;
          goto LABEL_62;
        }

        v73 = SESDefaultLogObject();
        v71 = [v93 slot];
        [v71 number];
        *a15 = SESCreateAndLogError();
      }

      else
      {
        v124 = 0u;
        v125 = 0u;
        [v64 DERItem];
        if (!DERParseSequenceSpec())
        {
          v65 = [NSData dataWithDERItem:&v124];
          if (v125)
          {
            v66 = v65;
            v67 = [NSData dataWithBytes:v125 + 2 length:*(&v125 + 1) - 2];
            v65 = v66;
            v68 = v67;
          }

          else
          {
            v68 = 0;
          }

          v70 = v68;
          v72 = v65;
          v32 = [AuthenticatedEncryptionResult withCipherText:v65 authenticationTag:v68];
          goto LABEL_59;
        }

        if (a15)
        {
          v72 = SESDefaultLogObject();
          v70 = [v64 asHexString];
          SESCreateAndLogError();
          *a15 = v32 = 0;
LABEL_59:

          goto LABEL_60;
        }
      }

      v32 = 0;
      goto LABEL_60;
    }

    if (a15)
    {
      v44 = SESDefaultLogObject();
      *a15 = SESCreateAndLogError();
    }

    v41 = 0;
    v30 = 0;
    v32 = 0;
LABEL_30:
    v35 = v25;
    v36 = v86;
    v37 = v26;
    v38 = v84;
    v33 = v88;
    v34 = v81;
LABEL_62:

    goto LABEL_63;
  }

  v33 = v88;
  if (!a15)
  {
    v32 = 0;
    v35 = v25;
    v36 = v86;
    v37 = v26;
    v38 = v84;
    goto LABEL_65;
  }

  v34 = SESDefaultLogObject();
  SESCreateAndLogError();
  *a15 = v32 = 0;
  v35 = v25;
  v36 = v86;
  v37 = v26;
  v38 = v84;
LABEL_64:

LABEL_65:

  return v32;
}

id sub_100032BA0(void *a1, void *a2)
{
  v3 = a1;
  v5 = a2;
  if ((byte_10050CC28 & 1) != 0 || (sub_1003AF3C4(v3, v4), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 type], v6, v7 < 4))
  {
    v9 = 0;
  }

  else
  {
    v14 = 0;
    v10 = sub_1003AF3C4(v3, v8);
    v11 = [v10 seid];
    SSEGetSignedDeviceData();

    v12 = SESDefaultLogObject();
    v9 = SESCreateAndLogError();
  }

  return v9;
}

id sub_100032E10(uint64_t a1, void *a2)
{
  [a2 DERItem];
  v2 = encodeSequenceSpec();

  return v2;
}

id sub_100032E80(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, int a7, void *a8)
{
  v15 = a1;
  v16 = a2;
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = SESDefaultLogObject();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "", buf, 2u);
  }

  v22 = sub_100032BA0(v15, v16);
  if (!v22)
  {
    v75 = 1;
    v26 = [v17 slot];
    v27 = __rev16([v26 number]);

    v74 = v27;
    v72 = 0;
    v73 = 0;
    v23 = sub_1000333FC(v15, v16, v17, &v73, &v72);
    v53 = v73;
    v28 = v72;
    if (v23 || !v53 || !v28)
    {
      if (a8)
      {
        v38 = v28;
        SESEnsureError();
        *a8 = v25 = 0;
        v28 = v38;
      }

      else
      {
        v25 = 0;
      }

      goto LABEL_44;
    }

    v29 = v28;
    v30 = [v18 dataUsingEncoding:4];
    *buf = &v75;
    v59 = 1;
    v60 = &v74;
    v61 = 2;
    v51 = v30;
    v62 = [v30 DERItem];
    v63 = v31;
    v64 = 0;
    v65 = 0;
    v66 = [v53 DERItem];
    v67 = v32;
    v52 = v29;
    v68 = [v29 DERItem];
    v69 = v33;
    v70 = 0;
    v71 = 0;
    if (v19)
    {
      v64 = [v19 DERItem];
      v65 = v34;
    }

    if ([v20 length])
    {
      if ([v20 length] >= 0x21)
      {
        if (!a8)
        {
          v45 = 0;
          v23 = 0;
          v25 = 0;
LABEL_43:

          v28 = v52;
LABEL_44:

          goto LABEL_45;
        }

        v35 = SESDefaultLogObject();
        [v20 length];
        v36 = SESCreateAndLogError();
        v37 = v35;
        v50 = 0;
        v23 = 0;
        v25 = 0;
        *a8 = v36;
LABEL_42:

        v45 = v50;
        goto LABEL_43;
      }

      [v20 length];
      [v20 bytes];
      v50 = encodeItem();
      v70 = [v50 DERItem];
      v71 = v39;
    }

    else
    {
      v50 = 0;
    }

    v40 = sub_10002E3C8(45056, buf, &off_1004C1FB0);
    v37 = v40;
    if (!v40)
    {
      if (!a8)
      {
        v23 = 0;
        v25 = 0;
        goto LABEL_42;
      }

      v49 = 0;
      v41 = SESDefaultLogObject();
      SESCreateAndLogError();
      v23 = 0;
      *a8 = v25 = 0;
LABEL_41:

      v37 = v49;
      goto LABEL_42;
    }

    v57 = 0;
    v49 = v40;
    v41 = sub_100035204(v15, v16, v40, 1, &v57);
    v23 = v57;
    if (!v23 && v41)
    {
      v48 = v41;
      v55 = [v41 DERItem];
      v56 = v42;
      v54 = 0u;
      if (DERParseSequenceSpec())
      {
        if (a8)
        {
          v43 = SESDefaultLogObject();
          v44 = [v48 asHexString];
          goto LABEL_31;
        }
      }

      else
      {
        if (!sub_1000338E0(&v54) || !a7)
        {
          v25 = [NSData dataWithDERItem:&v54];
          goto LABEL_41;
        }

        if (a8)
        {
          v46 = SESDefaultLogObject();
          *a8 = SESCreateAndLogError();
        }
      }

      v25 = 0;
      goto LABEL_41;
    }

    if (!a8)
    {
LABEL_32:
      v25 = 0;
      goto LABEL_41;
    }

    v48 = v41;
    v43 = SESDefaultLogObject();
    v44 = [v17 slot];
    [v44 number];
LABEL_31:
    *a8 = SESCreateAndLogError();

    v41 = v48;
    goto LABEL_32;
  }

  v23 = v22;
  if (a8)
  {
    v24 = v22;
    v25 = 0;
    *a8 = v23;
  }

  else
  {
    v25 = 0;
  }

LABEL_45:

  return v25;
}

id sub_1000333FC(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = sub_10002FFE8(v9, v10);
  v13 = SESDefaultLogObject();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v14 = [v11 key];
    v15 = [v11 slot];
    *buf = 138412546;
    *&buf[4] = v14;
    *&buf[12] = 2112;
    *&buf[14] = v15;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "%@ %@", buf, 0x16u);
  }

  v16 = [v11 slot];
  v17 = [v16 synchronizable];

  if (v17 && v12 > 1)
  {
    v18 = sub_1003AF1FC(v9, v10);
    if (v18)
    {
      v19 = v18;
      v20 = v19;
    }

    else
    {
      v43 = 1;
      v22 = [v11 slot];
      v23 = __rev16([v22 number]);

      v42 = v23;
      v41[0] = &v43;
      v41[1] = 1;
      v41[2] = &v42;
      v41[3] = 2;
      v24 = sub_10002E3C8(4097, v41, &off_1004C2080);
      if (v24)
      {
        v40 = 0;
        v25 = sub_100035204(v9, v10, v24, 1, &v40);
        v26 = v40;
        v19 = v26;
        if (!v25 || v26)
        {
          v20 = SESEnsureError();
        }

        else
        {
          v38 = 0u;
          v39 = 0u;
          if (DERParseSequenceSpec() || (v46 = 0u, v47 = 0u, v45 = 0u, memset(buf, 0, sizeof(buf)), DERParseSequenceSpecContent()))
          {
            v27 = SESDefaultLogObject();
            v28 = [v25 base64];
            v20 = SESCreateAndLogError();
          }

          else
          {
            memset(v37, 0, sizeof(v37));
            if (DERDecodeItem(&v47, v37))
            {
              v30 = SESDefaultLogObject();
              v31 = [v25 base64];
              v32 = v30;
              v20 = SESCreateAndLogError();
            }

            else
            {
              v32 = DERDecodeAdvance();
              v33 = DERDecodeAdvance();
              v31 = v33;
              if (v32 && v33)
              {
                v34 = v32;
                *a4 = v32;
                v35 = v31;
                v20 = 0;
                *a5 = v31;
              }

              else
              {
                v36 = SESDefaultLogObject();
                v20 = SESCreateAndLogError();
              }
            }
          }
        }
      }

      else
      {
        v25 = SESDefaultLogObject();
        v20 = SESCreateAndLogError();
        v19 = 0;
      }
    }
  }

  else
  {
    v21 = [v11 key];
    *a4 = [v21 assetACL];

    v19 = [v11 key];
    [v19 assetACLAttestation];
    *a5 = v20 = 0;
  }

  return v20;
}

uint64_t sub_1000338E0(uint64_t a1)
{
  v25 = 0u;
  v26 = 0u;
  v24 = 0u;
  v2 = DERParseSequenceSpec();
  if (v2)
  {
    v3 = v2;
    v4 = SESDefaultLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = [NSData dataWithDERItem:a1];
      v6 = [v5 asHexString];
      *buf = 67109378;
      *&buf[4] = v3;
      *&buf[8] = 2112;
      *&buf[10] = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Failed to parse attestation? %d %@", buf, 0x12u);

LABEL_7:
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  v22 = 0u;
  v23 = 0u;
  v7 = DERParseSequenceSpec();
  if (!v7)
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    memset(buf, 0, sizeof(buf));
    v12 = DERParseSequenceSpecContent();
    if (v12)
    {
      v13 = v12;
      v14 = SESDefaultLogObject();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = [NSData dataWithDERItem:&v22];
        v16 = [v15 asHexString];
        *v27 = 67109378;
        *v28 = v13;
        *&v28[4] = 2112;
        *&v28[6] = v16;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Failed to parse attestation applet data? %d %@", v27, 0x12u);
      }

      goto LABEL_20;
    }

    if (*(&v30 + 1) != 8)
    {
      v14 = SESDefaultLogObject();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *v27 = 67109120;
        *v28 = DWORD2(v30);
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "ECID length isn't uint64? %d", v27, 8u);
      }

      goto LABEL_20;
    }

    v14 = MGCopyAnswer();
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v17 = *v30;
      if (v17 == [v14 longLongValue:v22])
      {
LABEL_20:
        isKindOfClass = 0;
LABEL_21:

        return isKindOfClass & 1;
      }

      v18 = SESDefaultLogObject();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *v27 = 134283777;
        *v28 = v17;
        *&v28[8] = 2049;
        *&v28[10] = [v14 longLongValue];
        v19 = "ECID mismatched attestation %{private}lld != local %{private}lld";
        v20 = v18;
        v21 = 22;
LABEL_24:
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, v19, v27, v21);
      }
    }

    else
    {
      v18 = SESDefaultLogObject();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *v27 = 138412290;
        *v28 = v14;
        v19 = "Couldn't load ECID from MG %@";
        v20 = v18;
        v21 = 12;
        goto LABEL_24;
      }
    }

    goto LABEL_21;
  }

  v8 = v7;
  v4 = SESDefaultLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v9 = [NSData dataWithDERItem:&v24, v22, v23];
    v6 = [v9 asHexString];
    *buf = 67109378;
    *&buf[4] = v8;
    *&buf[8] = 2112;
    *&buf[10] = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Failed to parse attestation data? %d %@", buf, 0x12u);

    goto LABEL_7;
  }

LABEL_8:

  isKindOfClass = 0;
  return isKindOfClass & 1;
}

id sub_100033CD0(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9, void *a10)
{
  v17 = a1;
  v18 = a2;
  v19 = a4;
  v20 = a5;
  v65 = a6;
  v21 = a7;
  v63 = a8;
  v22 = a9;
  v23 = a3;
  v24 = SESDefaultLogObject();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    *&buf[4] = v19;
    *&buf[12] = 2112;
    *&buf[14] = v20;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, "ptc_KeyAttestKey %@ %@", buf, 0x16u);
  }

  v70 = 0;
  v71 = 0;
  v25 = sub_1000312FC(v17, v18, v20, v23, @"oa", &v71, &v70);

  v26 = v71;
  v27 = v70;
  v28 = v27;
  v64 = v21;
  v62 = v26;
  if (v25)
  {
    v29 = v27;
    if (a10)
    {
      v30 = v25;
      v31 = 0;
      *a10 = v25;
    }

    else
    {
      v31 = 0;
    }

    v48 = v63;
    v28 = v29;
    goto LABEL_30;
  }

  v69 = 1;
  v32 = [v19 slot];
  v33 = __rev16([v32 number]);

  v68 = v33;
  v34 = [v20 slot];
  v35 = __rev16([v34 number]);

  v67 = v35;
  v36 = [v65 dataUsingEncoding:4];
  v37 = [v64 dataUsingEncoding:4];
  *buf = &v69;
  *&buf[8] = 1;
  *&buf[16] = &v68;
  v75 = 2;
  v76 = &v67;
  v77 = 2;
  v78 = [v36 DERItem];
  v79 = v38;
  v61 = v37;
  v80 = [v37 DERItem];
  v81 = v39;
  v82 = 0;
  v83 = 0;
  v40 = [v19 key];
  v84 = [v40 assetACLItem];
  v85 = v41;
  v42 = [v19 key];
  v86 = [v42 assetACLAttestationItem];
  v87 = v43;
  v88 = [v26 DERItem];
  v89 = v44;
  v90 = [v28 DERItem];
  v91 = v45;
  v92 = 0;
  v93 = 0;

  if (v63)
  {
    v82 = [v63 DERItem];
    v83 = v46;
  }

  if (v22)
  {
    [v22 length];
    [v22 bytes];
    v60 = encodeItem();
    v92 = [v60 DERItem];
    v93 = v47;
  }

  else
  {
    v60 = 0;
  }

  v49 = sub_10002E3C8(45057, buf, &off_1004C1FD0);
  if (v49)
  {
    v59 = v36;
    v50 = SESDefaultLogObject();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
    {
      v51 = [v49 asHexString];
      *v72 = 138412290;
      *&v72[4] = v51;
      _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEBUG, "KeyAttestKeyCommandData : %@", v72, 0xCu);
    }

    v66 = 0;
    v52 = sub_100035204(v17, v18, v49, 1, &v66);
    v25 = v66;
    if (!v25 && v52)
    {
      [v52 DERItem];
      *v72 = 0u;
      v73 = 0u;
      if (!DERParseSequenceSpec())
      {
        v31 = [NSData dataWithDERItem:&v73];
        goto LABEL_28;
      }

      if (a10)
      {
        v57 = SESDefaultLogObject();
        v55 = [v52 asHexString];
        *a10 = SESCreateAndLogError();
      }

      goto LABEL_25;
    }

    v31 = a10;
    if (a10)
    {
      SESDefaultLogObject();
      v53 = v58 = v49;
      v56 = [v19 slot];
      [v56 number];
      *a10 = SESCreateAndLogError();

      v49 = v58;
LABEL_25:
      v31 = 0;
    }

LABEL_28:

    v36 = v59;
    goto LABEL_29;
  }

  if (a10)
  {
    v59 = v36;
    v52 = SESDefaultLogObject();
    SESCreateAndLogError();
    v25 = 0;
    *a10 = v31 = 0;
    goto LABEL_28;
  }

  v25 = 0;
  v31 = 0;
LABEL_29:

  v48 = v63;
LABEL_30:

  return v31;
}

id sub_100034304(void *a1, void *a2, void *a3, unsigned int a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = SESDefaultLogObject();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "ptc_LoadKey %@", &buf, 0xCu);
  }

  v23 = 1;
  v22 = __rev16(a4);
  *&buf = &v23;
  *(&buf + 1) = 1;
  v25 = &v22;
  v26 = 2;
  v27 = [v9 keyBlobItem];
  v28 = v11;
  v29 = [v9 encryptedWrappedKeyBlobItem];
  v30 = v12;
  v31 = [v9 assetACLItem];
  v32 = v13;
  v33 = [v9 assetACLAttestationItem];
  v34 = v14;
  v15 = sub_10002E3C8(4096, &buf, &off_1004C1F10);
  if (v15)
  {
    v21 = 0;
    v16 = sub_100035204(v7, v8, v15, 1, &v21);
    v17 = v21;
    if (v17)
    {
      v18 = SESDefaultLogObject();
      v19 = SESCreateAndLogError();
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v17 = SESDefaultLogObject();
    v19 = SESCreateAndLogError();
  }

  return v19;
}

id sub_100034534(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a1;
  v12 = a2;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = SESDefaultLogObject();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = [v13 key];
    v18 = [v13 slot];
    *buf = 138412546;
    *&buf[4] = v17;
    *&buf[12] = 2112;
    *&buf[14] = v18;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Exporting key %@ slot %@", buf, 0x16u);
  }

  v33 = 0;
  v34 = 0;
  v19 = sub_1000312FC(v11, v12, v13, v15, @"os", &v34, &v33);

  v20 = v34;
  v21 = v33;
  if (v19)
  {
    if (a6)
    {
      v22 = v19;
      v23 = 0;
      *a6 = v19;
    }

    else
    {
      v23 = 0;
    }
  }

  else
  {
    v24 = [v13 slot];
    v25 = __rev16([v24 number]);

    v32 = v25;
    *buf = &v32;
    *&buf[8] = 2;
    *&buf[16] = [v14 DERItem];
    v36 = v26;
    v37 = [v20 DERItem];
    v38 = v27;
    v39 = [v21 DERItem];
    v40 = v28;
    v29 = sub_10002E3C8(53249, buf, &off_1004C2050);
    if (v29)
    {
      v23 = sub_100035204(v11, v12, v29, 1, a6);
    }

    else
    {
      if (a6)
      {
        v30 = SESDefaultLogObject();
        *a6 = SESCreateAndLogError();
      }

      v23 = 0;
    }
  }

  return v23;
}

BOOL sub_1000347E4(void *a1, void *a2, unsigned int a3, void *a4, void *a5)
{
  v9 = a1;
  v10 = a2;
  v11 = a4;
  v12 = SESDefaultLogObject();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    *&buf[4] = a3;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "into slot 0x%x", buf, 8u);
  }

  v20 = __rev16(a3);
  *buf = &v20;
  v22 = 2;
  v13 = [v11 DERItem];
  v15 = v14;

  v23 = v13;
  v24 = v15;
  v16 = sub_10002E3C8(53250, buf, &off_1004C2060);
  if (v16)
  {
    v17 = sub_100035204(v9, v10, v16, 1, a5);
    v18 = v17 != 0;
  }

  else
  {
    if (!a5)
    {
      v18 = 0;
      goto LABEL_8;
    }

    v17 = SESDefaultLogObject();
    SESCreateAndLogError();
    *a5 = v18 = 0;
  }

LABEL_8:
  return v18;
}

id sub_100034994(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a1;
  v12 = a2;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = SESDefaultLogObject();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "", &buf, 2u);
  }

  if (v12 && v13 && v14 && v15)
  {
    v58 = 0;
    v59 = 0;
    v57 = 0;
    v17 = sub_100034EF0(v11, v12, v14, v13, @"oacl", &v59, &v58, &v57);
    v18 = v59;
    v19 = v58;
    v20 = v57;
    v51 = v20;
    if (v17)
    {
      if (a6)
      {
        v22 = v17;
        v23 = 0;
        *a6 = v17;
      }

      else
      {
        v23 = 0;
      }

      goto LABEL_35;
    }

    v24 = v20;
    v50 = v19;
    v55 = 0;
    v56 = 0;
    v25 = sub_1003AF3C4(v11, v21);
    v26 = [v25 seid];
    LODWORD(v24) = SSECreateSecureElementACLRequest(0xFFFFFFFF, v26, v15, v24, &v56, &v55);

    if (v24)
    {
      if (!a6)
      {
        v17 = 0;
        v23 = 0;
        v19 = v50;
LABEL_35:

        goto LABEL_36;
      }

      v27 = SESDefaultLogObject();
      SESCreateAndLogError();
      v17 = 0;
      *a6 = v23 = 0;
      v28 = v27;
      v19 = v50;
LABEL_34:

      goto LABEL_35;
    }

    v48 = v55;
    v49 = v56;
    v29 = SESDefaultLogObject();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      v30 = [(__CFData *)v49 asHexString];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v30;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEBUG, "AssetACLRequest : %@", &buf, 0xCu);
    }

    v31 = SESDefaultLogObject();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      v32 = [(__CFData *)v48 asHexString];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v32;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEBUG, "assetACLRequestAttestation : %@", &buf, 0xCu);
    }

    v54 = 1;
    v33 = [v14 slot];
    v34 = __rev16([v33 number]);

    v53 = v34;
    *&buf = &v54;
    *(&buf + 1) = 1;
    v61 = &v53;
    v62 = 2;
    v63 = [(__CFData *)v49 DERItem];
    v64 = v35;
    v65 = [(__CFData *)v48 DERItem];
    v66 = v36;
    v67 = [v18 DERItem];
    v68 = v37;
    v19 = v50;
    v69 = [v50 DERItem];
    v70 = v38;
    v39 = sub_10002E3C8(53251, &buf, &off_1004C2070);
    v40 = v39;
    if (v39)
    {
      v52 = 0;
      v47 = v39;
      v41 = sub_100035204(v11, v12, v39, 0, &v52);
      v17 = v52;
      if (!v17 && v41)
      {
        v42 = v41;
        v23 = v42;
LABEL_32:

        v28 = v49;
        v40 = v47;
LABEL_33:

        goto LABEL_34;
      }

      v46 = v41;
      if (a6)
      {
        v43 = SESDefaultLogObject();
        v45 = [v47 asHexString];
        *a6 = SESCreateAndLogError();

        v19 = v50;
      }

      v23 = 0;
    }

    else
    {
      if (!a6)
      {
        v17 = 0;
        v23 = 0;
        v28 = v49;
        goto LABEL_33;
      }

      v47 = 0;
      v46 = SESDefaultLogObject();
      SESCreateAndLogError();
      v17 = 0;
      *a6 = v23 = 0;
    }

    v42 = v46;
    goto LABEL_32;
  }

  if (!a6)
  {
    v23 = 0;
    goto LABEL_37;
  }

  v18 = SESDefaultLogObject();
  SESCreateAndLogError();
  *a6 = v23 = 0;
LABEL_36:

LABEL_37:

  return v23;
}

id sub_100034EF0(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v15 = a1;
  v16 = a2;
  v17 = a4;
  v18 = a5;
  v48 = 0;
  v49 = 0;
  v19 = sub_1000333FC(v15, v16, a3, &v49, &v48);
  v20 = v49;
  v21 = v48;
  v22 = v21;
  if (!v19 && v20 && v21)
  {
    v42 = a6;
    v43 = a7;
    v23 = sub_10002FFE8(v15, v16);
    v25 = sub_1003AF3C4(v15, v24);
    v26 = [v25 type];

    if (v26 == 4 && v23 <= 2)
    {
      v27 = SESDefaultLogObject();
      v28 = SESCreateAndLogError();
    }

    else
    {
      v47 = 0;
      v29 = sub_1000300E4(v15, v16, &v47);
      v27 = v47;
      if (v27 || !v29)
      {
        v28 = SESEnsureError();
      }

      else
      {
        v30 = v29;
        *a8 = v29;
        v32 = sub_1003AF3C4(v15, v31);
        v33 = [v32 type];

        v45 = 0;
        v46 = 0;
        v35 = sub_1003AF3C4(v15, v34);
        v36 = [v35 seid];
        if (v33 <= 3)
        {
          v37 = 1;
        }

        else
        {
          v37 = 2;
        }

        v38 = SSEEvaluateSecureElementACL(v17, 0xFFFFFFFF, v36, v20, v22, v18, v29, v37, &v46, &v45);

        *v42 = v46;
        *v43 = v45;
        if (v38)
        {
          v44 = SESDefaultLogObject();
          v41 = [(__CFData *)v20 asHexString];
          v40 = [(__CFData *)v22 asHexString];
          v28 = SESCreateAndLogError();
        }

        else
        {
          v28 = 0;
        }

        v27 = 0;
      }
    }
  }

  else
  {
    v28 = SESEnsureError();
  }

  return v28;
}

id sub_100035204(void *a1, void *a2, void *a3, int a4, void *a5)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = sub_1003AF1FC(v9, v10);
  if (!v12)
  {
    v50 = a5;
    v52 = v10;
    sub_10002FFE8(v9, v10);
    v53 = v9;
    v54 = v9;
    v51 = v11;
    v16 = v11;
    v17 = v16;
    if (a4)
    {
      v18 = 700;
    }

    else
    {
      v18 = 255;
    }

    v19 = [v16 length];
    if (v19)
    {
      v20 = v19;
      v21 = 0;
      v22 = 0;
      while (1)
      {
        v23 = v20 >= v18 ? v18 : v20;
        if (v22 || v23 != [v17 length])
        {
          v24 = [v17 subdataWithRange:{v22, v23}];
        }

        else
        {
          v24 = v17;
        }

        v25 = v24;
        if (a4)
        {
          v56 = 0;
          v26 = &v56;
          sub_1003AF0E8();
        }

        else
        {
          v55 = 0;
          v26 = &v55;
          sub_1003AEF50();
        }
        v27 = ;
        v28 = *v26;

        if (v28 || v27 == 0)
        {
          break;
        }

        v22 += v23;
        v20 -= v23;

        v21 = v27;
        if (!v20)
        {
          goto LABEL_27;
        }
      }

      v32 = SESDefaultLogObject();
      v30 = SESCreateAndLogError();
      v33 = v30;

      v31 = 0;
    }

    else
    {
      v27 = 0;
LABEL_27:
      v27 = v27;
      v30 = 0;
      v31 = v27;
    }

    v13 = v30;
    if (v13 || !v31)
    {
      v9 = v53;
      if (!v50)
      {
        v15 = 0;
        v11 = v51;
LABEL_53:

        v10 = v52;
        goto LABEL_54;
      }

      v43 = SESDefaultLogObject();
      SESCreateAndLogError();
      *v50 = v15 = 0;
    }

    else
    {
      v34 = v54;
      v35 = v31;
      v36 = sub_1003B0934(v35);
      v37 = [v36 mutableCopy];

      for (i = sub_1003B0984(v35) & 0xFF00; ; i = sub_1003B0984(v35) & 0xFF00)
      {
        if (i != 25344)
        {
          v43 = v37;
          v44 = 0;
          goto LABEL_43;
        }

        v39 = v35;
        v56 = 0;
        v35 = sub_1003AF0E8();
        v40 = v56;

        if (v40 || v35 == 0)
        {
          break;
        }

        v42 = sub_1003B0934(v35);
        [v37 appendData:v42];
      }

      v45 = SESDefaultLogObject();
      v44 = SESCreateAndLogError();
      v46 = v44;

      v43 = 0;
LABEL_43:

      v13 = v44;
      if (v13)
      {
        v47 = 1;
      }

      else
      {
        v47 = v43 == 0;
      }

      v9 = v53;
      if (v47)
      {
        v11 = v51;
        if (v50)
        {
          v48 = SESDefaultLogObject();
          *v50 = SESCreateAndLogError();
        }

        v15 = 0;
        goto LABEL_52;
      }

      v43 = v43;
      v15 = v43;
    }

    v11 = v51;
LABEL_52:

    goto LABEL_53;
  }

  v13 = v12;
  if (a5)
  {
    v14 = v12;
    v15 = 0;
    *a5 = v13;
  }

  else
  {
    v15 = 0;
  }

LABEL_54:

  return v15;
}

uint64_t sub_100035698(void *a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v8 = a1;
  v9 = [NSNumber numberWithUnsignedShort:a3];
  v18 = 0;
  v10 = sub_10002E4AC(v8, v7, @"ForceTransitionToPersonalized", v9, 0, 0, &v18);
  v11 = v18;

  if (v10)
  {
    v12 = v11 == 0;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;
  v14 = sub_100030394(v8, v7, a3);

  v15 = SESDefaultLogObject();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    *buf = 67109634;
    v20 = v13;
    v21 = 2112;
    v22 = v11;
    v23 = 2112;
    v24 = v14;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "result %d creationError %@ cleanupError %@", buf, 0x1Cu);
  }

  if (a4)
  {
    v16 = v11;
    *a4 = v11;
  }

  return v13;
}

int sub_100035828(id a1, $6842A9A1E17D9B0613ECF6F11EE1909C *a2, BOOL *a3)
{
  if (a2->var0 == 0xA00000000000000ALL && a2->var1.var1 >= 4)
  {
    v4 = *a2->var1.var0;
    v5 = bswap32(v4);
    v6 = SESDefaultLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v9[0] = 67109120;
      v9[1] = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Got raw PTC Applet Version 0x%X", v9, 8u);
    }

    if (v4 == 0x4000000)
    {
      v7 = 3;
    }

    else
    {
      v7 = 4;
    }

    if (v4 == 50331648)
    {
      v7 = 2;
    }

    if (v5 < 3)
    {
      v7 = 1;
    }

    dword_10050CC2C = v7;
    *a3 = 1;
  }

  return 0;
}

id sub_100035A18(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = objc_opt_new();
  v4 = [v2 userInfo];
  v5 = [v4 objectForKeyedSubscript:&off_1004DC990];
  v6 = [v5 copy];
  v7 = *(v3 + 24);
  *(v3 + 24) = v6;

  v8 = [v2 valueForEntitlement:@"com.apple.seserviced.seendpoints"];
  *(v3 + 9) = v8 != 0;

  v9 = [v2 valueForEntitlement:@"com.apple.seserviced.seendpoints.certificateauthorities"];
  *(v3 + 10) = v9 != 0;

  v10 = [v2 valueForEntitlement:@"com.apple.seserviced.key"];
  *(v3 + 8) = v10 != 0;

  v11 = [v2 valueForEntitlement:@"com.apple.seserviced.key.legacykey"];
  *(v3 + 13) = v11 != 0;

  v12 = [v2 valueForEntitlement:@"com.apple.internal.seserviced.all.endpoints.and.cas"];
  *(v3 + 11) = v12 != 0;

  v13 = [v2 valueForEntitlement:@"com.apple.seserviced.key"];
  *(v3 + 12) = v13 != 0;

  v14 = [v2 valueForEntitlement:@"com.apple.internal.seserviced.ptattestation"];
  *(v3 + 14) = v14 != 0;

  v15 = [v2 valueForEntitlement:@"com.apple.internal.seserviced.fido"];
  *(v3 + 15) = v15 != 0;

  v16 = [v2 valueForEntitlement:@"com.apple.private.seserviced.sesprivacykey"];

  *(v3 + 16) = v16 != 0;

  return v3;
}

void *sub_100035DF4(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = objc_opt_new();
  v4 = v3[1];
  v3[1] = v2;

  return v3;
}

void sub_1000367F0(uint64_t a1)
{
  v2 = SESDefaultLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 32);
    v5[0] = 67109378;
    v5[1] = v3;
    v6 = 2112;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "Connection to PID %d (%@) has been invalidated", v5, 0x12u);
  }
}

void sub_1000368A8(uint64_t a1)
{
  v2 = SESDefaultLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 32);
    v5[0] = 67109378;
    v5[1] = v3;
    v6 = 2112;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "Connection to PID %d (%@) has been interrupted", v5, 0x12u);
  }
}

void sub_100036B68(uint64_t a1)
{
  v7[0] = 0;
  v7[1] = v7;
  v7[2] = 0x3032000000;
  v7[3] = sub_100036D04;
  v7[4] = sub_100036D14;
  v8 = 0;
  v2 = [*(a1 + 32) database];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100036D1C;
  v6[3] = &unk_1004C2280;
  v6[4] = v7;
  sub_1003ACE94(v2, v6);

  v3 = [*(a1 + 32) messageQueue];
  sub_100037D40(SESAppletLockStateMonitor, v3, *(*(a1 + 32) + 8));

  v4 = [*(a1 + 32) database];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100036EE4;
  v5[3] = &unk_1004C22A8;
  v5[4] = *(a1 + 32);
  sub_1003ACE94(v4, v5);

  _Block_object_dispose(v7, 8);
}

void sub_100036CEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100036D04(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100036D1C(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3)
  {
    v3 = SESDefaultLogObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Failed to initialize database for EndpointStore", buf, 2u);
    }
  }

  else
  {
    v5 = *(*(a1 + 32) + 8);
    obj = *(v5 + 40);
    v6 = sub_10003CD80(SESEndpointDatabase, a2, &obj);
    objc_storeStrong((v5 + 40), obj);
    if (*(*(*(a1 + 32) + 8) + 40))
    {
      v7 = SESDefaultLogObject();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to retrieve endpoints", buf, 2u);
      }
    }

    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v3 = v6;
    v8 = [v3 countByEnumeratingWithState:&v12 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v13;
      do
      {
        v11 = 0;
        do
        {
          if (*v13 != v10)
          {
            objc_enumerationMutation(v3);
          }

          [_TtC10seserviced13EndpointStore insertWithEndpoint:*(*(&v12 + 1) + 8 * v11), v12];
          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [v3 countByEnumeratingWithState:&v12 objects:v18 count:16];
      }

      while (v9);
    }
  }
}

void sub_100036EE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = SESDefaultLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Failed initialize database for fixEndpointSignatureCertificatePK", v6, 2u);
    }
  }

  else
  {
    v5 = *(a1 + 32);

    [v5 fixEndpointSignatureCertificatePK:a2];
  }
}

void sub_100036F74()
{
  objc_opt_self();
  v0 = [_TtC10seserviced13EndpointStore containsWithFilter:&stru_1004C2360];
  v1 = [_TtC10seserviced13EndpointStore containsWithFilter:&stru_1004C2380];
  v2 = v1;
  if ((v0 & 1) != 0 || v1)
  {
    v3 = +[_TtC10seserviced3DSK queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100037410;
    block[3] = &unk_1004C23A0;
    v5 = v0;
    v6 = v2;
    dispatch_async(v3, block);
  }
}

void sub_100037044(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [NSString stringWithUTF8String:"[SESEndpointAndKeyXPCServer onFirstUnlock]_block_invoke"];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100037114;
  v6[3] = &unk_1004C2318;
  v6[4] = *(a1 + 32);
  v7 = v3;
  v5 = v3;
  sub_1003AF710(SecureElementManager, v4, v6);
}

void sub_100037114(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (!a3)
  {
    v6 = [*(a1 + 32) messageQueue];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000371E0;
    v7[3] = &unk_1004C22F0;
    v8 = v5;
    v9 = *(a1 + 40);
    dispatch_async(v6, v7);
  }
}

void sub_1000371E0(uint64_t a1)
{
  v2 = sub_1003AB220(*(a1 + 32), *(a1 + 40));
  if (v2)
  {
    v3 = v2;
    v4 = SESDefaultLogObject();
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
LABEL_5:

LABEL_6:
      return;
    }

    v9 = 138412290;
    v10 = v3;
    v5 = "Not starting DSK due to failed applet personalization %@";
LABEL_4:
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, v5, &v9, 0xCu);
    goto LABEL_5;
  }

  v6 = *(a1 + 32);
  v7 = [@"A000000704E000000000" hexStringAsData];
  LOBYTE(v6) = sub_1003AF34C(v6, v7);

  if ((v6 & 1) == 0)
  {
    v3 = SESDefaultLogObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Not starting DSK due to missing Sunsprite", &v9, 2u);
    }

    goto LABEL_6;
  }

  v8 = sub_100014918(*(a1 + 32), 0, *(a1 + 40));
  if (v8)
  {
    v3 = v8;
    v4 = SESDefaultLogObject();
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_5;
    }

    v9 = 138412290;
    v10 = v3;
    v5 = "Not starting DSK due to failed Sunsprite provisioning %@";
    goto LABEL_4;
  }

  sub_100036F74();

  [SESBootUUID setFirstLaunchAfterBootDoneForKey:@"applet.personalization.last.check.uuid"];
}

void sub_100037410(uint64_t a1)
{
  if (*(a1 + 32) == 1)
  {
    v2 = +[_TtC10seserviced3DSK shared];
    [v2 startWithModule:0];
  }

  if (*(a1 + 33) == 1)
  {
    v3 = +[_TtC10seserviced3DSK shared];
    [v3 startWithModule:1];
  }
}

void sub_100037648(uint64_t a1)
{
  if (MKBDeviceUnlockedSinceBoot())
  {
    v2 = *(a1 + 32);

    [FirstUnlockHandler onDarwinNotification:]_0(v2);
  }
}

void sub_100037690()
{
  v0 = SESDefaultLogObject();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_INFO, "Kicking off first unlock actions", buf, 2u);
  }

  [qword_10050CC48 onFirstUnlock];
  +[_TtC10seserviced16SEKeySyncManager kickOff];
  sub_10005FCFC();
  v4 = 0;
  [_TtC10seserviced15SESAssetManager kickOffAndReturnError:&v4];
  v1 = v4;
  if (v1)
  {
    v2 = SESDefaultLogObject();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v6 = v1;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "Failed to start asset manager %@", buf, 0xCu);
    }
  }

  [qword_10050CC38 handleFirstUnlock];
  [qword_10050CC50 start];
  PLLogRegisteredEvent();
  +[_TtC10seserviced23SECNotificationListener kickOff];
  if (SESInternalVariant())
  {
    *buf = 0;
    v3 = dispatch_get_global_queue(21, 0);
    notify_register_dispatch("seserviced.debug.request.ttr", buf, v3, &stru_1004C23E0);
  }

  +[_TtC10seserviced10SESStartup startup];
  +[_TtC10seserviced10SESStartup scheduleAndRunAllOneTimeTasks];
  +[_TtC10seserviced23SecureElementVersionTTR kickoff];
}

uint64_t start()
{
  v0 = objc_autoreleasePoolPush();
  v1 = SESDefaultLogObject();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    LOWORD(v24[0]) = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "Starting ... ", v24, 2u);
  }

  for (i = 0; i != 4; ++i)
  {
    v3 = dword_100408A90[i];
    signal(dword_100408A90[i], 1);
    v4 = dispatch_source_create(&_dispatch_source_type_signal, v3, 0, 0);
    v5 = qword_10050CC68[i];
    qword_10050CC68[i] = v4;

    dispatch_set_context(qword_10050CC68[i], v3);
    dispatch_source_set_event_handler_f(qword_10050CC68[i], sub_100037B88);
    dispatch_resume(qword_10050CC68[i]);
  }

  +[SESAlarm kickoff];
  +[SESXPCEventListener kickoff];
  +[SESDarwinNotificationMonitor kickoff];
  +[_TtC10seserviced13JPKIXPCServer kickOff];
  v6 = +[SESEndpointAndKeyXPCServer createServer];
  v7 = qword_10050CC48;
  qword_10050CC48 = v6;

  v8 = +[_SESSessionManager sessionManager];
  v9 = qword_10050CC50;
  qword_10050CC50 = v8;

  v10 = +[KeyManagementLibrary sharedLibrary];
  v11 = qword_10050CC38;
  qword_10050CC38 = v10;

  [qword_10050CC48 setSESAppletLockStateObserver:qword_10050CC38];
  [qword_10050CC48 start];
  [qword_10050CC38 startService];
  v12 = objc_opt_new();
  v13 = qword_10050CC40;
  qword_10050CC40 = v12;

  [qword_10050CC40 resume];
  +[_TtC10seserviced10SESStartup scheduleViennaBackgroundTasks];
  +[_TtC10seserviced28SEStorageManagementXPCServer kickOff];
  if (MKBDeviceUnlockedSinceBoot())
  {
    sub_100037690();
  }

  else
  {
    v14 = objc_opt_new();
    v15 = qword_10050CC60;
    qword_10050CC60 = v14;
  }

  if (SESInternalVariant())
  {
    v16 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.seserviced"];
    [v16 doubleForKey:@"debug.boost.log.interval.sec"];
    if (qword_10050CC48)
    {
      v18 = v17;
      if (v17 > 0.0)
      {
        v19 = [SESTimer alloc];
        v20 = [qword_10050CC48 messageQueue];
        v24[0] = _NSConcreteStackBlock;
        v24[1] = 3221225472;
        v24[2] = sub_100037C40;
        v24[3] = &unk_1004C2400;
        *&v24[4] = v18;
        v21 = sub_1003AE50C(v19, v20, v24);
        v22 = qword_10050CC58;
        qword_10050CC58 = v21;

        sub_1003AE618(qword_10050CC58, v18);
      }
    }
  }

  objc_autoreleasePoolPop(v0);
  CFRunLoopRun();
  return 0;
}

void sub_100037B88(uint64_t a1)
{
  v2 = SESDefaultLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v4 = 134217984;
    v5 = a1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Received signal: %p", &v4, 0xCu);
  }

  [qword_10050CC38 stopService];
  Main = CFRunLoopGetMain();
  CFRunLoopStop(Main);
}

void sub_100037C40(uint64_t a1)
{
  v8 = 0;
  memset(buffer, 0, sizeof(buffer));
  v2 = getpid();
  v3 = proc_pidinfo(v2, 3, 0, buffer, 136);
  v4 = SESDefaultLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = (LODWORD(buffer[0]) >> 21) & 1;
    if (v3 <= 0x87)
    {
      v5 = -1;
    }

    v6[0] = 67109120;
    v6[1] = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Boosted %d", v6, 8u);
  }

  sub_1003AE618(qword_10050CC58, *(a1 + 32));
}

void sub_100037D40(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  objc_opt_self();
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100037E20;
  v9[3] = &unk_1004C22F0;
  v10 = v4;
  v11 = v5;
  v6 = qword_10050CC90;
  v7 = v5;
  v8 = v4;
  if (v6 != -1)
  {
    dispatch_once(&qword_10050CC90, v9);
  }
}

void sub_100037E20(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = qword_10050CC88;
  qword_10050CC88 = v2;

  objc_storeStrong((qword_10050CC88 + 8), *(a1 + 32));
  objc_storeStrong((qword_10050CC88 + 16), *(a1 + 40));
  *(qword_10050CC88 + 24) = 4279897;
  v4 = [@"A000000809434343444B417631" hexStringAsData];
  v5 = *(qword_10050CC88 + 32);
  *(qword_10050CC88 + 32) = v4;

  v6 = [SESXPCEventListener registerOnStream:@"com.apple.seld.xpc.events" forEvent:@"appletChanged" handler:qword_10050CC88];
  if ([v6 ses_contains:&stru_1004C2440])
  {
    dispatch_async(*(a1 + 32), &stru_1004C2460);
  }

  else
  {
    v7 = +[_TtC10seserviced20SESBootScopedStorage shared];
    v8 = [v7 getNumberFor:@"pta.lock.state"];

    if (v8)
    {
      v9 = [v8 BOOLValue];
      v10 = SESDefaultLogObject();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11[0] = 67109120;
        v11[1] = v9;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Retrieved applet lock state from storage %d", v11, 8u);
      }

      *(qword_10050CC88 + 24) = v9;
      [*(a1 + 40) appletLockStateDidChange:v9];
    }

    else
    {
      dispatch_async(*(a1 + 32), &stru_1004C2480);
    }
  }
}

uint64_t sub_100038014(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  objc_opt_self();
  string = xpc_dictionary_get_string(v4, _xpc_event_key_name);
  v7 = string;
  if (string && !strcmp(string, "appletChanged"))
  {
    v12 = xpc_dictionary_get_string(v4, "appletChanged");
    if ([v5 ses_isEqualToHexCString:v12])
    {
      v10 = 1;
      goto LABEL_7;
    }

    v8 = SESDefaultLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v13 = 136315138;
      v14 = v12;
      v9 = "Don't care about AID %s";
      goto LABEL_5;
    }
  }

  else
  {
    v8 = SESDefaultLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v13 = 136315138;
      v14 = v7;
      v9 = "Ignoring eventName %s";
LABEL_5:
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, v9, &v13, 0xCu);
    }
  }

  v10 = 0;
LABEL_7:

  return v10;
}

void sub_100038190(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = *(v7 + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003825C;
  block[3] = &unk_1004C24A8;
  v12 = v6;
  v13 = v7;
  v14 = v5;
  v9 = v5;
  v10 = v6;
  dispatch_async(v8, block);
}

void sub_10003825C(void *a1)
{
  if (a1[4])
  {
    v2 = SESDefaultLogObject();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = a1[4];
      v6 = 138412290;
      v7 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "Couldn't get SE to check lock state, %@", &v6, 0xCu);
    }

    *(a1[5] + 24) = 4279897;
  }

  else
  {
    v4 = a1[5];
    v5 = a1[6];

    sub_1003AD6D4(v4, v5);
  }
}

void sub_100038428(uint64_t a1)
{
  if ([*(a1 + 32) isEqualToString:@"com.apple.seld.xpc.events"])
  {
    if (sub_100038014(SESAppletLockStateMonitor, *(a1 + 40), *(*(a1 + 48) + 32)))
    {
      v2 = *(a1 + 48);

      sub_1003AD5EC(v2);
    }
  }

  else
  {
    v3 = SESDefaultLogObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 32);
      v5 = 138412290;
      v6 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Ignoring stream %@", &v5, 0xCu);
    }
  }
}

void sub_100038658(uint64_t a1)
{
  v1 = [[_SESSessionManager alloc] init:*(a1 + 32)];
  v2 = qword_10050CC98;
  qword_10050CC98 = v1;
}

void sub_100038C70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100038C90(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_100038CA8(uint64_t a1)
{
  v2 = SESDefaultLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "Connection invalidated", v4, 2u);
  }

  return [*(a1 + 32) didCloseConnection:*(*(*(a1 + 40) + 8) + 40)];
}

id sub_100038D24(uint64_t a1)
{
  v2 = SESDefaultLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "Connection interrupted", v4, 2u);
  }

  return [*(a1 + 32) didCloseConnection:*(*(*(a1 + 40) + 8) + 40)];
}

void sub_100038E40(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKeyedSubscript:&off_1004DC9F0];

  v4 = SESDefaultLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = [*(a1 + 32) processIdentifier];
    v6 = *(a1 + 32);
    *buf = 67109634;
    *v39 = v5;
    *&v39[4] = 2112;
    *&v39[6] = v3;
    *&v39[14] = 2112;
    *&v39[16] = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Connection closed PID %d (%@) %@", buf, 0x1Cu);
  }

  [*(*(a1 + 40) + 40) unregisterForAppStateChanges:*(a1 + 32)];
  v26 = a1;
  v7 = [*(a1 + 32) userInfo];
  v8 = [v7 objectForKeyedSubscript:&off_1004DCA08];

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v25 = v8;
  v9 = [v8 copy];
  v10 = [v9 countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v33;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v33 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v32 + 1) + 8 * i);
        v15 = SESDefaultLogObject();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          *v39 = v14;
          *&v39[8] = 2112;
          *&v39[10] = v3;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Removing session %@ for %@", buf, 0x16u);
        }

        [v14 endSessionInternal:0];
      }

      v11 = [v9 countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v11);
  }

  v16 = [*(v26 + 32) userInfo];
  v17 = [v16 objectForKeyedSubscript:&off_1004DCA20];

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v27 = v17;
  v18 = [v17 copy];
  v19 = [v18 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v29;
    do
    {
      for (j = 0; j != v20; j = j + 1)
      {
        if (*v29 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v28 + 1) + 8 * j);
        v24 = SESDefaultLogObject();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          *v39 = v23;
          *&v39[8] = 2112;
          *&v39[10] = v3;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "Removing assertion %@ for %@", buf, 0x16u);
        }

        [v23 invalidateInternal:0];
      }

      v20 = [v18 countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v20);
  }
}

void sub_1000397C0(uint64_t a1)
{
  v2 = [[_SESACWGSession alloc] initWithRemoteObject:*(a1 + 32) queue:*(*(a1 + 40) + 16)];
  v3 = v2;
  if (v2)
  {
    [(_SESSession *)v2 setConnection:*(a1 + 48)];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100039988;
    v8[3] = &unk_1004C2520;
    v8[4] = *(a1 + 40);
    [(_SESACWGSession *)v3 setDidEndCallback:v8];
    [*(a1 + 40) addSession:v3 forConnection:*(a1 + 48)];
    v4 = SESDefaultLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v10 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Starting SESACWGSession %@", buf, 0xCu);
    }

    [(_SESACWGSession *)v3 start];
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v5 = *(a1 + 56);
    v6 = SESDefaultLogObject();
    v7 = SESCreateAndLogError();
    (*(v5 + 16))(v5, 0, v7);
  }
}

void sub_100039988(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100039A2C;
  v7[3] = &unk_1004C22F0;
  v7[4] = v4;
  v8 = v3;
  v6 = v3;
  dispatch_async(v5, v7);
}

void sub_100039BB0(uint64_t a1)
{
  v2 = [[_SESDCKSession alloc] initWithRemoteObject:*(a1 + 32) queue:*(*(a1 + 40) + 16)];
  v3 = v2;
  if (v2)
  {
    [(_SESSession *)v2 setConnection:*(a1 + 48)];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100039D78;
    v8[3] = &unk_1004C2520;
    v8[4] = *(a1 + 40);
    [(_SESDCKSession *)v3 setDidEndCallback:v8];
    [*(a1 + 40) addSession:v3 forConnection:*(a1 + 48)];
    v4 = SESDefaultLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v10 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Starting SESDCKSession %@", buf, 0xCu);
    }

    [(_SESDCKSession *)v3 start];
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v5 = *(a1 + 56);
    v6 = SESDefaultLogObject();
    v7 = SESCreateAndLogError();
    (*(v5 + 16))(v5, 0, v7);
  }
}

void sub_100039D78(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100039E1C;
  v7[3] = &unk_1004C22F0;
  v7[4] = v4;
  v8 = v3;
  v6 = v3;
  dispatch_async(v5, v7);
}

void sub_10003A01C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10003A034(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKeyedSubscript:&off_1004DC9F0];

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v28 = a1;
  v4 = *(*(a1 + 40) + 48);
  v5 = [(_SESRKESession *)v4 countByEnumeratingWithState:&v31 objects:v37 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v32;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v32 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v9 = [*(*(&v31 + 1) + 8 * v8) connection];
      v10 = [v9 userInfo];
      v11 = [v10 objectForKeyedSubscript:&off_1004DC9F0];
      v12 = [v3 isEqualToString:v11];

      if (v12)
      {
        goto LABEL_14;
      }

      if (v6 == ++v8)
      {
        v6 = [(_SESRKESession *)v4 countByEnumeratingWithState:&v31 objects:v37 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  [*(*(v28 + 40) + 40) registerForAppStateChanges:*(v28 + 32)];
  v13 = *(v28 + 48);
  if (v13)
  {
    v14 = [v13 objectForKeyedSubscript:@"rangeStart"];
    v15 = [*(v28 + 48) objectForKeyedSubscript:@"rangeEnd"];
    v16 = v15;
    v17 = 0xFFFFLL;
    v18 = 0xFFFFLL;
    if (v14 && v15)
    {
      v18 = [v14 unsignedIntegerValue];
      v19 = [v16 unsignedIntegerValue];
      v17 = v19 - [v14 unsignedIntegerValue];
    }
  }

  else
  {
    v17 = 0xFFFFLL;
    v18 = 0xFFFFLL;
  }

  v4 = [[_SESRKESession alloc] initWithRemoteObject:*(v28 + 56) subscriptionRange:v18 queue:v17, *(*(v28 + 40) + 16)];
  if (!v4)
  {
LABEL_14:
    v20 = *(v28 + 64);
    v21 = SESDefaultLogObject();
    v22 = SESCreateAndLogError();
    (*(v20 + 16))(v20, 0, v22);
    goto LABEL_15;
  }

  v21 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.seserviced"];
  v22 = [v21 stringForKey:@"debug.rke.session.bundleid"];
  if (v22)
  {
    [(_SESRKESession *)v4 setClientBundleIdentifier:v22];
  }

  else
  {
    v24 = *(v28 + 32);
    if (v24)
    {
      [v24 auditToken];
    }

    else
    {
      *buf = 0u;
      v36 = 0u;
    }

    v25 = *(*(v28 + 72) + 8);
    obj = *(v25 + 40);
    v26 = [LSBundleRecord bundleRecordForAuditToken:buf error:&obj];
    objc_storeStrong((v25 + 40), obj);
    if (*(*(*(v28 + 72) + 8) + 40))
    {
      (*(*(v28 + 64) + 16))();

      goto LABEL_15;
    }

    v27 = [v26 bundleIdentifier];
    [(_SESRKESession *)v4 setClientBundleIdentifier:v27];
  }

  [_TtC10seserviced17CarKeyAppLauncher allowAppWithIdentifier:v3];
  [(_SESSession *)v4 setConnection:*(v28 + 32)];
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_10003A4FC;
  v29[3] = &unk_1004C2520;
  v29[4] = *(v28 + 40);
  [(_SESRKESession *)v4 setDidEndCallback:v29];
  [*(v28 + 40) addSession:v4 forConnection:*(v28 + 32)];
  v23 = SESDefaultLogObject();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    *&buf[4] = v4;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "Starting SESRKESession %@", buf, 0xCu);
  }

  [(_SESRKESession *)v4 start];
  (*(*(v28 + 64) + 16))(*(v28 + 64), v4, 0);
LABEL_15:
}

void sub_10003A4FC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10003A5A0;
  v7[3] = &unk_1004C22F0;
  v7[4] = v4;
  v8 = v3;
  v6 = v3;
  dispatch_async(v5, v7);
}

void sub_10003A678(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 8));
  v2 = [*(*(a1 + 32) + 48) copy];
  os_unfair_lock_unlock((*(a1 + 32) + 8));
  v3 = [*(a1 + 40) objectForKeyedSubscript:@"xpcEventName"];
  if (([v3 isEqualToString:@"com.apple.secureelementservice.dck.event.vehicle.did.status.update"] & 1) != 0 || objc_msgSend(v3, "isEqualToString:", @"com.apple.secureelementservice.dck.event.vehicle.did.disconnect"))
  {
    [_TtC10seserviced17CarKeyAppLauncher maybeLaunchAppsForKeyIdentifier:*(a1 + 48)];
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v10 + 1) + 8 * v8);
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
        {
          [v9 sendEvent:*(a1 + 40) keyIdentifier:{*(a1 + 48), v10}];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

BOOL sub_10003A8DC(id a1, _SESSession *a2)
{
  v2 = a2;
  if ([(_SESSession *)v2 isActive])
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

BOOL sub_10003A9B4(id a1, _SESSession *a2)
{
  v2 = a2;
  if ([(_SESSession *)v2 isActive])
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

BOOL sub_10003AA8C(id a1, _SESSession *a2)
{
  v2 = a2;
  if ([(_SESSession *)v2 isActive])
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

void sub_10003AB84(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 8));
  v2 = [*(*(a1 + 32) + 48) copy];
  os_unfair_lock_unlock((*(a1 + 32) + 8));
  +[_TtC10seserviced17CarKeyAppLauncher refreshKeys];
  [_TtC10seserviced17CarKeyAppLauncher maybeLaunchAppsForKeyIdentifier:*(a1 + 40)];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = v2;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v8 didCreateKey:{*(a1 + 40), v9}];
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

void sub_10003ADC0(void *a1)
{
  os_unfair_lock_lock((a1[4] + 8));
  v2 = [*(a1[4] + 48) copy];
  os_unfair_lock_unlock((a1[4] + 8));
  [_TtC10seserviced17CarKeyAppLauncher maybeLaunchAppsForKeyIdentifier:a1[5]];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = v2;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
        {
          [v8 didReceivePassthroughMessage:a1[6] keyIdentifier:{a1[5], v9}];
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

void sub_10003B330(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 56);
  v3 = *(*(a1 + 32) + 56);
  v4 = [*(a1 + 40) hexStringAsData];
  v5 = [@"A000000809434343444B417631" hexStringAsData];
  v6 = [v3 isEquivalentForKeyIdentifier:v4 appletIdentifier:v5];

  [v2 invalidateInternal:v6];
  v7 = [[_SESAssertion alloc] initWithRemoteObject:*(a1 + 48) keyIdentifier:*(a1 + 40) appletIdentifier:*(a1 + 56) options:*(a1 + 64) queue:*(*(a1 + 32) + 16)];
  v8 = v7;
  if (!v7)
  {
    v10 = *(a1 + 80);
    v9 = SESDefaultLogObject();
    v11 = SESCreateAndLogError();
    (*(v10 + 16))(v10, 0, v11);
LABEL_8:

    goto LABEL_9;
  }

  v9 = [(_SESAssertion *)v7 start:v6];
  if (!v9)
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10003B5DC;
    v14[3] = &unk_1004C2618;
    v14[4] = *(a1 + 32);
    [(_SESAssertion *)v8 setDidEndCallback:v14];
    [(_SESAssertion *)v8 setConnection:*(a1 + 72)];
    objc_storeStrong((*(a1 + 32) + 56), v8);
    v12 = [*(a1 + 72) userInfo];
    v11 = [v12 objectForKeyedSubscript:&off_1004DCA20];

    [v11 addObject:v8];
    v13 = SESDefaultLogObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v16 = v8;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Started SESAssertion %@", buf, 0xCu);
    }

    (*(*(a1 + 80) + 16))(*(a1 + 80), v8, 0);
    goto LABEL_8;
  }

  (*(*(a1 + 80) + 16))();
LABEL_9:
}

void sub_10003B5DC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = SESDefaultLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v10 = 138412290;
    v11 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Removing assertion %@", &v10, 0xCu);
  }

  v5 = *(a1 + 32);
  v6 = *(v5 + 56);
  *(v5 + 56) = 0;

  v7 = [v3 connection];
  v8 = [v7 userInfo];
  v9 = [v8 objectForKeyedSubscript:&off_1004DCA20];

  [v9 removeObject:v3];
}

void sub_10003B948(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10003B968(uint64_t a1)
{
  [*(a1 + 32) doubleValue];
  if (v2 >= 1.0)
  {
    if ([*(a1 + 40) isEqual:@"A000000909ACCE5501"])
    {
      v4 = +[_TtC10seserviced12LyonExternal shared];
      v5 = *(a1 + 48);
      [*(a1 + 32) doubleValue];
      v6 = *(*(a1 + 64) + 8);
      obj = *(v6 + 40);
      [v4 blockRangingForReaderIdentifierWithReaderIdentifier:v5 timeout:&obj error:?];
      objc_storeStrong((v6 + 40), obj);

      (*(*(a1 + 56) + 16))(*(a1 + 56), *(*(*(a1 + 64) + 8) + 40) == 0);
      return;
    }

    v3 = *(a1 + 56);
    v9 = SESDefaultLogObject();
    v8 = *(a1 + 40);
  }

  else
  {
    v3 = *(a1 + 56);
    v9 = SESDefaultLogObject();
    [*(a1 + 32) doubleValue];
  }

  v7 = SESCreateAndLogError();
  (*(v3 + 16))(v3, 0, v7);
}

void sub_10003BD10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10003BD30(uint64_t a1)
{
  if ([*(a1 + 32) isEqual:@"A000000909ACCE5501"])
  {
    v2 = +[_TtC10seserviced12LyonExternal shared];
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 56) + 8);
    obj = *(v4 + 40);
    [v2 unblockRangingForReaderIdentifierWithReaderIdentifier:v3 error:&obj];
    objc_storeStrong((v4 + 40), obj);

    (*(*(a1 + 48) + 16))(*(a1 + 48), *(*(*(a1 + 56) + 8) + 40) == 0);
  }

  else
  {
    v5 = *(a1 + 48);
    v8 = SESDefaultLogObject();
    v7 = *(a1 + 32);
    v6 = SESCreateAndLogError();
    (*(v5 + 16))(v5, 0, v6);
  }
}

void sub_10003C23C(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKeyedSubscript:&off_1004DC9F0];

  v4 = SESDefaultLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [*(a1 + 32) processIdentifier];
    v6 = *(a1 + 32);
    *buf = 67109634;
    v20 = v5;
    v21 = 2112;
    v22 = v3;
    v23 = 2112;
    v24 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Client application entered background PID %d (%@) %@", buf, 0x1Cu);
  }

  v7 = [*(a1 + 32) userInfo];
  v8 = [v7 objectForKeyedSubscript:&off_1004DCA08];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v15;
    do
    {
      v13 = 0;
      do
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [*(*(&v14 + 1) + 8 * v13) setIsBackgrounded:{1, v14}];
        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }
}

void sub_10003C498(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKeyedSubscript:&off_1004DC9F0];

  v4 = SESDefaultLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [*(a1 + 32) processIdentifier];
    v6 = *(a1 + 32);
    *buf = 67109634;
    v20 = v5;
    v21 = 2112;
    v22 = v3;
    v23 = 2112;
    v24 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Client application got suspended PID %d (%@) %@", buf, 0x1Cu);
  }

  v7 = [*(a1 + 32) userInfo];
  v8 = [v7 objectForKeyedSubscript:&off_1004DCA08];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v15;
    do
    {
      v13 = 0;
      do
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [*(*(&v14 + 1) + 8 * v13) setIsBackgrounded:{1, v14}];
        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }
}

void sub_10003C6F4(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKeyedSubscript:&off_1004DC9F0];

  v4 = SESDefaultLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [*(a1 + 32) processIdentifier];
    v6 = *(a1 + 32);
    *buf = 67109634;
    v20 = v5;
    v21 = 2112;
    v22 = v3;
    v23 = 2112;
    v24 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Client application entered foreground PID %d (%@) %@", buf, 0x1Cu);
  }

  v7 = [*(a1 + 32) userInfo];
  v8 = [v7 objectForKeyedSubscript:&off_1004DCA08];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v15;
    do
    {
      v13 = 0;
      do
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [*(*(&v14 + 1) + 8 * v13) setIsBackgrounded:{0, v14}];
        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }
}

id sub_10003C954(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  objc_opt_self();
  v5 = +[SEEndPointEntity fetchRequest];
  v11 = 0;
  v6 = sub_1003AD310(v4, v5, &v11);

  v7 = v11;
  v8 = v7;
  if (a3)
  {
    v9 = v7;
    *a3 = v8;
  }

  return v6;
}

id sub_10003CA04(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a2;
  v8 = objc_opt_self();
  v9 = sub_10003C954(v8, v6, a4);

  v10 = Filter();

  return v10;
}

void *sub_10003CA94(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = objc_opt_self();
  if (v8 && v9 && a5)
  {
    v12 = v11;
    v17 = _NSConcreteStackBlock;
    v18 = 3221225472;
    v19 = sub_10003CC28;
    v20 = &unk_1004C17F0;
    v21 = v8;
    v22 = v9;
    v13 = sub_10003CA04(v12, &v17, v10, a5);
    v14 = v13;
    if (*a5 || ![v13 count])
    {
      a5 = 0;
    }

    else
    {
      a5 = [v14 objectAtIndexedSubscript:0];
    }
  }

  else if (a5)
  {
    v15 = SESDefaultLogObject();
    *a5 = SESCreateAndLogError();

    a5 = 0;
  }

  return a5;
}

id sub_10003CC28(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 identifier];
  if ([v4 isEqualToString:*(a1 + 32)])
  {
    v5 = [v3 clientName];
    v6 = [v5 isEqualToString:*(a1 + 40)];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id sub_10003CCA4(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  objc_opt_self();
  if (v4)
  {
    v5 = [v4 endPointData];
    v6 = [SEEndPoint decodeWithData:v5 error:a3];
LABEL_5:

    goto LABEL_6;
  }

  if (a3)
  {
    v5 = SESDefaultLogObject();
    SESCreateAndLogError();
    *a3 = v6 = 0;
    goto LABEL_5;
  }

  v6 = 0;
LABEL_6:

  return v6;
}

id sub_10003CD80(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = objc_opt_self();
  v38 = 0;
  v6 = sub_100059808(SESEndpointDatabase, v4, &v38);
  v7 = v38;
  if (v7)
  {
    v8 = v7;
    if (!a3)
    {
      v28 = 0;
      goto LABEL_27;
    }

    v9 = SESDefaultLogObject();
    SESCreateAndLogError();
    *a3 = v28 = 0;
  }

  else
  {
    v28 = objc_opt_new();
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    obj = v6;
    v26 = [obj countByEnumeratingWithState:&v34 objects:v40 count:16];
    if (v26)
    {
      v22 = v6;
      v23 = v4;
      v8 = 0;
      v25 = *v35;
      do
      {
        v10 = 0;
        do
        {
          if (*v35 != v25)
          {
            objc_enumerationMutation(obj);
          }

          v27 = v10;
          v11 = [*(*(&v34 + 1) + 8 * v10) endPoints];
          v30 = 0u;
          v31 = 0u;
          v32 = 0u;
          v33 = 0u;
          v12 = [v11 countByEnumeratingWithState:&v30 objects:v39 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v31;
            do
            {
              for (i = 0; i != v13; i = i + 1)
              {
                v16 = v8;
                if (*v31 != v14)
                {
                  objc_enumerationMutation(v11);
                }

                v17 = *(*(&v30 + 1) + 8 * i);
                v29 = v8;
                v18 = sub_10003CCA4(v5, v17, &v29);
                v8 = v29;

                if (v8)
                {
                  if (a3)
                  {
                    v19 = SESDefaultLogObject();
                    v21 = v17;
                    *a3 = SESCreateAndLogError();
                  }
                }

                else
                {
                  [v28 addObject:v18];
                }
              }

              v13 = [v11 countByEnumeratingWithState:&v30 objects:v39 count:16];
            }

            while (v13);
          }

          v10 = v27 + 1;
        }

        while ((v27 + 1) != v26);
        v26 = [obj countByEnumeratingWithState:&v34 objects:v40 count:16];
      }

      while (v26);
      v6 = v22;
      v4 = v23;
    }

    else
    {
      v8 = 0;
    }

    v9 = obj;
  }

LABEL_27:

  return v28;
}

id sub_10003D080(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = a3;
  v8 = a4;
  objc_opt_self();
  if (v6 && v7)
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = sub_10003D234;
    v20 = sub_10003D244;
    v21 = 0;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10003D24C;
    v12[3] = &unk_1004C26B8;
    v13 = v7;
    v15 = &v16;
    v14 = v6;
    sub_1003AD2A8(v8, v12);
    v9 = v17[5];

    _Block_object_dispose(&v16, 8);
  }

  else
  {
    v10 = SESDefaultLogObject();
    v9 = SESCreateAndLogError();
  }

  return v9;
}

void sub_10003D21C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10003D234(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10003D24C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(*(a1 + 48) + 8);
  obj = *(v5 + 40);
  v6 = [v4 encodeWithError:&obj];
  objc_storeStrong((v5 + 40), obj);
  if (*(*(*(a1 + 48) + 8) + 40))
  {
    v7 = 1;
  }

  else
  {
    v7 = v6 == 0;
  }

  if (v7)
  {
    v13 = SESDefaultLogObject();
    v14 = *(a1 + 32);
    v8 = SESCreateAndLogError();
    v9 = *(*(a1 + 48) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }

  else
  {
    [*(a1 + 40) setEndPointData:v6];
    v11 = sub_1003AD108(v3);
    v12 = *(*(a1 + 48) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;
  }
}

id sub_10003DD20(id a1, SEEndPoint *a2)
{
  v2 = a2;
  v3 = [(SEEndPoint *)v2 bleUUID];
  if (v3)
  {
    v4 = [(SEEndPoint *)v2 revocationAttestation];
    if (v4)
    {
      v5 = 0;
    }

    else
    {
      v5 = [(SEEndPoint *)v2 readerIdentifier];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id sub_10003E34C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 uniqueID];
  LODWORD(v4) = [v4 containsObject:v5];

  if (v4)
  {
    v6 = [v3 secureElementPass];
    if ([v6 isCarKeyPass])
    {
      v7 = [v3 secureElementPass];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void sub_10003E9C8(_Unwind_Exception *a1)
{
  v2 = v1;
  objc_sync_exit(v2);
  _Unwind_Resume(a1);
}

id sub_10003E9E8(uint64_t a1, void *a2)
{
  v3 = [a2 keyIdentifier];
  v4 = [*(a1 + 32) publicKeyIdentifier];
  v5 = [v3 isEqualToData:v4];

  return v5;
}

uint64_t sub_10003EB00(uint64_t a1)
{
  v2 = SESDefaultLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "SESRKESession endSession %@", &v5, 0xCu);
  }

  [*(a1 + 32) endSessionInternal:0];
  return (*(*(a1 + 40) + 16))();
}

void sub_10003EC9C(uint64_t a1)
{
  v2 = SESDefaultLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    *buf = 138412546;
    v17 = v3;
    v18 = 2112;
    v19 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "SESRKESession %@ isPassiveEntryAvailable readerIdentifier %@", buf, 0x16u);
  }

  if ([*(a1 + 32) isActive])
  {
    v5 = *(*(a1 + 32) + 56);
    v6 = [*(a1 + 40) hexStringAsData];
    LOBYTE(v5) = [v5 containsObject:v6];

    if (v5)
    {
      v7 = +[_TtC10seserviced14AlishaExternal shared];
      v8 = [*(a1 + 40) hexStringAsData];
      [v7 isPassiveEntryAvailableFor:v8];

      (*(*(a1 + 48) + 16))();
    }

    else
    {
      v12 = *(a1 + 48);
      v13 = SESDefaultLogObject();
      v15 = *(a1 + 40);
      v14 = SESCreateAndLogError();
      (*(v12 + 16))(v12, 0, v14);
    }
  }

  else
  {
    v9 = *(a1 + 48);
    v10 = SESDefaultLogObject();
    v11 = SESCreateAndLogError();
    (*(v9 + 16))(v9, 0, v11);
  }
}

void sub_10003EFE0(uint64_t a1)
{
  v2 = SESDefaultLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 64);
    v4 = *(a1 + 72);
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = *(a1 + 48) != 0;
    v8 = *(a1 + 80);
    v9 = *(a1 + 81);
    *buf = 138413826;
    v41 = v5;
    v42 = 1024;
    v43 = v3;
    v44 = 1024;
    v45 = v4;
    v46 = 2112;
    v47 = v6;
    v48 = 1024;
    v49 = v7;
    v50 = 1024;
    v51 = v8;
    v52 = 1024;
    v53 = v9;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "SESRKESession %@ sendRKEFunction 0x%X action 0x%X readerIdentifier %@ authorization %d isEnduring %d isHandlingExternal %d", buf, 0x34u);
  }

  if (([*(a1 + 32) isActive] & 1) == 0)
  {
    v23 = *(a1 + 56);
    v14 = SESDefaultLogObject();
    v17 = SESCreateAndLogError();
    (*(v23 + 16))(v23, 0, v17);
    goto LABEL_24;
  }

  v10 = *(*(a1 + 32) + 56);
  v11 = [*(a1 + 40) hexStringAsData];
  LOBYTE(v10) = [v10 containsObject:v11];

  if ((v10 & 1) == 0)
  {
    v24 = *(a1 + 56);
    v14 = SESDefaultLogObject();
    v33 = *(a1 + 40);
    v17 = SESCreateAndLogError();
    (*(v24 + 16))(v24, 0, v17);
    goto LABEL_24;
  }

  v12 = +[_TtC10seserviced14AlishaExternal shared];
  v13 = [*(a1 + 40) hexStringAsData];
  v14 = [v12 getEndpointWithReaderIdentifier:v13];

  v15 = [v14 bleUUID];
  LODWORD(v12) = v15 == 0;

  if (v12)
  {
    v31 = *(a1 + 56);
    v17 = SESDefaultLogObject();
    v34 = *(a1 + 40);
    v32 = SESCreateAndLogError();
    (*(v31 + 16))(v31, 0, v32);

    goto LABEL_24;
  }

  v16 = [v14 bleUUID];
  v17 = [NSUUID ses_withUUIDString:v16];

  v18 = *(a1 + 32);
  v19 = *(v18 + 72);
  if (v19)
  {
    if ([v19 isEqual:v17])
    {
      goto LABEL_11;
    }

    v18 = *(a1 + 32);
    if (*(v18 + 72))
    {
      v20 = +[_TtC10seserviced14AlishaExternal shared];
      [v20 removeHighPriorityRequestFor:*(*(a1 + 32) + 72) client:*(*(a1 + 32) + 80)];

      v18 = *(a1 + 32);
    }
  }

  objc_storeStrong((v18 + 72), v17);
  v16 = +[_TtC10seserviced14AlishaExternal shared];
  [v16 addHighPriorityRequestFor:*(*(a1 + 32) + 72) client:*(*(a1 + 32) + 80)];

LABEL_11:
  objc_initWeak(buf, *(a1 + 32));
  if (*(a1 + 80) == 1 && *(a1 + 81) == 1)
  {
    v35 = _NSConcreteStackBlock;
    v36 = 3221225472;
    v37 = sub_10003F4B8;
    v38 = &unk_1004C27A8;
    v16 = &v39;
    objc_copyWeak(&v39, buf);
    v21 = &v35;
    v22 = 1;
  }

  else
  {
    v22 = 0;
    v21 = 0;
  }

  v25 = objc_retainBlock(v21);
  v26 = +[_TtC10seserviced14AlishaExternal shared];
  v27 = *(a1 + 64);
  v28 = *(a1 + 72);
  v29 = [v14 publicKeyIdentifier];
  if (*(a1 + 80))
  {
    v30 = 2;
  }

  else
  {
    v30 = 1;
  }

  [v26 sendRKERequestWithFunctionIdentifier:v27 actionIdentifier:v28 keyIdentifier:v29 requestType:v30 actionType:0 arbitraryData:0 enduringRequestHandler:v25 authorization:*(a1 + 48) completion:{*(a1 + 56), v35, v36, v37, v38}];

  if (v22)
  {
    objc_destroyWeak(v16);
  }

  objc_destroyWeak(buf);
LABEL_24:
}

void sub_10003F490(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  if (v18)
  {
    objc_destroyWeak(v17);
  }

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10003F4B8(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained isActive])
  {
    v14 = [WeakRetained queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10003F5F8;
    block[3] = &unk_1004C2780;
    v16 = WeakRetained;
    v17 = v9;
    v18 = v10;
    v19 = v11;
    v20 = v12;
    dispatch_async(v14, block);
  }
}

void sub_10003F6F0(uint64_t a1)
{
  v2 = SESDefaultLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 56);
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    *buf = 138412802;
    v25 = v4;
    v26 = 1024;
    v27 = v3;
    v28 = 2112;
    v29 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "SESRKESession %@ cancelRKEFunction 0x%X for readerIdentifier %@", buf, 0x1Cu);
  }

  if (([*(a1 + 32) isActive] & 1) == 0)
  {
    v16 = *(a1 + 48);
    v10 = SESDefaultLogObject();
    v15 = SESCreateAndLogError();
    v17 = *(v16 + 16);
    v18 = v16;
LABEL_9:
    v17(v18);
    goto LABEL_10;
  }

  v6 = *(*(a1 + 32) + 56);
  v7 = [*(a1 + 40) hexStringAsData];
  LOBYTE(v6) = [v6 containsObject:v7];

  if ((v6 & 1) == 0)
  {
    v19 = *(a1 + 48);
    v10 = SESDefaultLogObject();
    v22 = *(a1 + 40);
    v15 = SESCreateAndLogError();
    v17 = *(v19 + 16);
    v18 = v19;
    goto LABEL_9;
  }

  v8 = +[_TtC10seserviced14AlishaExternal shared];
  v9 = [*(a1 + 40) hexStringAsData];
  v10 = [v8 getEndpointWithReaderIdentifier:v9];

  v11 = [v10 bleUUID];

  if (v11)
  {
    v12 = +[_TtC10seserviced14AlishaExternal shared];
    v13 = *(a1 + 56);
    v14 = [v10 publicKeyIdentifier];
    v15 = [v12 cancelRKERequestWithFunctionIdentifier:v13 keyIdentifier:v14];

    (*(*(a1 + 48) + 16))(*(a1 + 48));
  }

  else
  {
    v20 = *(a1 + 48);
    v15 = SESDefaultLogObject();
    v23 = *(a1 + 40);
    v21 = SESCreateAndLogError();
    (*(v20 + 16))(v20, 0, v21);
  }

LABEL_10:
}

void sub_10003FAE0(uint64_t a1)
{
  v2 = SESDefaultLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 64);
    v4 = *(a1 + 72);
    v5 = *(a1 + 32);
    v6 = *(a1 + 40) != 0;
    v7 = *(a1 + 48);
    *buf = 138413314;
    v29 = v5;
    v30 = 1024;
    v31 = v3;
    v32 = 1024;
    v33 = v4;
    v34 = 1024;
    v35 = v6;
    v36 = 2112;
    v37 = v7;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "SESRKESession %@ continueExecutingFunction 0x%X action 0x%X arbitraryData %d readerIdentifier %@", buf, 0x28u);
  }

  if (([*(a1 + 32) isActive] & 1) == 0)
  {
    v12 = *(a1 + 56);
    v11 = SESDefaultLogObject();
    v13 = SESCreateAndLogError();
    v14 = *(v12 + 16);
    v15 = v12;
LABEL_10:
    v14(v15, 0, v13);
    goto LABEL_11;
  }

  v8 = *(*(a1 + 32) + 56);
  v9 = [*(a1 + 48) hexStringAsData];
  LOBYTE(v8) = [v8 containsObject:v9];

  if ((v8 & 1) == 0)
  {
    v10 = *(a1 + 56);
    v11 = SESDefaultLogObject();
    v26 = *(a1 + 48);
    goto LABEL_9;
  }

  if ([*(a1 + 40) length] >= 0x41)
  {
    v10 = *(a1 + 56);
    v11 = SESDefaultLogObject();
    [*(a1 + 40) length];
LABEL_9:
    v13 = SESCreateAndLogError();
    v14 = *(v10 + 16);
    v15 = v10;
    goto LABEL_10;
  }

  v16 = +[_TtC10seserviced14AlishaExternal shared];
  v17 = [*(a1 + 48) hexStringAsData];
  v11 = [v16 getEndpointWithReaderIdentifier:v17];

  v18 = [v11 bleUUID];

  if (v18)
  {
    v19 = +[_TtC10seserviced14AlishaExternal shared];
    v20 = *(a1 + 64);
    v21 = *(a1 + 72);
    v22 = *(a1 + 40);
    v23 = [v11 publicKeyIdentifier];
    v13 = [v19 continueExecutingRKERequestWithFunctionIdentifier:v20 actionIdentifier:v21 arbitraryData:v22 keyIdentifier:v23];

    (*(*(a1 + 56) + 16))(*(a1 + 56), v13 == 0, v13);
  }

  else
  {
    v24 = *(a1 + 56);
    v13 = SESDefaultLogObject();
    v27 = *(a1 + 48);
    v25 = SESCreateAndLogError();
    (*(v24 + 16))(v24, 0, v25);
  }

LABEL_11:
}

void sub_10003FF48(uint64_t a1)
{
  v2 = SESDefaultLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    *buf = 138412546;
    v30 = v3;
    v31 = 2112;
    v32 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "SESRKESession %@ sendPassthroughMessage readerIdentifier %@", buf, 0x16u);
  }

  if ([*(a1 + 32) isActive])
  {
    v5 = *(*(a1 + 32) + 56);
    v6 = [*(a1 + 40) hexStringAsData];
    LOBYTE(v5) = [v5 containsObject:v6];

    if ((v5 & 1) == 0)
    {
      v20 = *(a1 + 56);
      v9 = SESDefaultLogObject();
      v27 = *(a1 + 40);
      v12 = SESCreateAndLogError();
      (*(v20 + 16))(v20, 0, v12);
      goto LABEL_24;
    }

    v7 = +[_TtC10seserviced14AlishaExternal shared];
    v8 = [*(a1 + 40) hexStringAsData];
    v9 = [v7 getEndpointWithReaderIdentifier:v8];

    v10 = [v9 bleUUID];

    if (!v10)
    {
      v21 = *(a1 + 56);
      v12 = SESDefaultLogObject();
      v28 = *(a1 + 40);
      v22 = SESCreateAndLogError();
      (*(v21 + 16))(v21, 0, v22);
LABEL_23:

      goto LABEL_24;
    }

    v11 = [v9 bleUUID];
    v12 = [NSUUID ses_withUUIDString:v11];

    v13 = *(a1 + 32);
    v14 = *(v13 + 72);
    if (v14)
    {
      if ([v14 isEqual:v12])
      {
        goto LABEL_11;
      }

      v13 = *(a1 + 32);
      if (*(v13 + 72))
      {
        v15 = +[_TtC10seserviced14AlishaExternal shared];
        [v15 removeHighPriorityRequestFor:*(*(a1 + 32) + 72) client:*(*(a1 + 32) + 80)];

        v13 = *(a1 + 32);
      }
    }

    objc_storeStrong((v13 + 72), v12);
    v16 = +[_TtC10seserviced14AlishaExternal shared];
    [v16 addHighPriorityRequestFor:*(*(a1 + 32) + 72) client:*(*(a1 + 32) + 80)];

LABEL_11:
    if (*(*(a1 + 32) + 64))
    {
LABEL_22:
      v23 = [NSUUID alloc];
      v24 = [v9 bleUUID];
      v22 = [v23 initWithUUIDString:v24];

      v25 = +[_TtC10seserviced14AlishaExternal shared];
      v26 = [v25 sendPassthroughWithMessage:*(a1 + 48) clientUUID:v22];

      (*(*(a1 + 56) + 16))(*(a1 + 56), v26 == 0, v26);
      goto LABEL_23;
    }

    v17 = [v9 getEndpointUser];
    if (v17)
    {
      if (v17 != 1)
      {
LABEL_21:
        *(*(a1 + 32) + 64) = 1;
        goto LABEL_22;
      }

      v18 = @"friendPassthroughCount";
    }

    else
    {
      v18 = @"ownerPassthroughCount";
    }

    sub_10004D584(SESDAnalyticsLogger, v18);
    goto LABEL_21;
  }

  v19 = *(a1 + 56);
  v9 = SESDefaultLogObject();
  v12 = SESCreateAndLogError();
  (*(v19 + 16))(v19, 0, v12);
LABEL_24:
}

void sub_100040408(uint64_t a1)
{
  v2 = SESDefaultLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v18 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "SESRKESession %@ getVehicleReports", buf, 0xCu);
  }

  if ([*(a1 + 32) isActive])
  {
    v4 = +[_TtC10seserviced14AlishaExternal shared];
    v5 = [v4 getReportsWithIsInternalClient:0];

    v6 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v5 count]);
    v11 = _NSConcreteStackBlock;
    v12 = 3221225472;
    v13 = sub_10004065C;
    v14 = &unk_1004C2848;
    v15 = *(a1 + 32);
    v7 = v6;
    v16 = v7;
    [v5 enumerateKeysAndObjectsUsingBlock:&v11];
    v8 = SESDefaultLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = [v7 allValues];
      *buf = 138412290;
      v18 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Vehicle report %@", buf, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v10 = *(a1 + 40);
    v5 = SESDefaultLogObject();
    v7 = SESCreateAndLogError();
    (*(v10 + 16))(v10, 0, v7);
  }
}

void sub_10004065C(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = *(*(a1 + 32) + 56);
  v7 = [v5 readerIdentifier];
  v8 = [v7 hexStringAsData];
  LODWORD(v6) = [v6 containsObject:v8];

  if (v6)
  {
    [*(a1 + 40) setObject:v5 forKeyedSubscript:v9];
  }
}

void sub_100040814(id *a1)
{
  v2 = SESDefaultLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = a1[4];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "SESRKESession %@ sign", &buf, 0xCu);
  }

  if (([a1[4] isActive] & 1) != 0 && !objc_msgSend(a1[4], "isBackgrounded"))
  {
    if ([*(a1[4] + 7) containsObject:a1[5]])
    {
      v7 = +[_TtC10seserviced14AlishaExternal shared];
      v5 = [v7 getEndpointWithReaderIdentifier:a1[5]];

      if (v5)
      {
        v8 = [a1[4] clientBundleIdentifier];
        v9 = v8 == 0;

        if (v9)
        {
          v20 = a1[7];
          v6 = SESDefaultLogObject();
          v11 = SESCreateAndLogError();
          v20[2](v20, 0, v11);
        }

        else
        {
          v10 = [a1[4] clientBundleIdentifier];
          v6 = [v10 dataUsingEncoding:4];

          if (v6)
          {
            v11 = [NSData randomData:8];
            *&buf = [v6 DERItem];
            *(&buf + 1) = v12;
            v34 = [a1[6] DERItem];
            v35 = v13;
            v36 = [v11 DERItem];
            v37 = v14;
            v15 = encodeSequenceContentSpec();
            if (v15)
            {
              objc_initWeak(&location, a1[4]);
              v26[0] = _NSConcreteStackBlock;
              v26[1] = 3221225472;
              v26[2] = sub_100040D8C;
              v26[3] = &unk_1004C2898;
              v30 = a1[7];
              objc_copyWeak(&v31, &location);
              v27 = v5;
              v28 = v15;
              v29 = v11;
              sub_100055378(SecureElementManager, 0, 0, @"Sign OEM App Data", v26);

              objc_destroyWeak(&v31);
              objc_destroyWeak(&location);
            }

            else
            {
              v23 = a1[7];
              v24 = SESDefaultLogObject();
              v25 = SESCreateAndLogError();
              v23[2](v23, 0, v25);
            }
          }

          else
          {
            v21 = a1[7];
            v11 = SESDefaultLogObject();
            v22 = SESCreateAndLogError();
            v21[2](v21, 0, v22);
          }
        }
      }

      else
      {
        v18 = a1[7];
        v6 = SESDefaultLogObject();
        v11 = [a1[5] asHexString];
        v19 = SESCreateAndLogError();
        v18[2](v18, 0, v19);
      }
    }

    else
    {
      v16 = a1[7];
      v5 = SESDefaultLogObject();
      v6 = [a1[5] asHexString];
      v17 = SESCreateAndLogError();
      v16[2](v16, 0, v17);
    }
  }

  else
  {
    v4 = a1[7];
    v5 = SESDefaultLogObject();
    v6 = SESCreateAndLogError();
    v4[2](v4, 0, v6);
  }
}

void sub_100040D68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100040D8C(id *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    (*(a1[7] + 2))();
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(a1 + 8);
    v7 = WeakRetained;
    if (WeakRetained)
    {
      v8 = [WeakRetained queue];
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_100040F30;
      v12[3] = &unk_1004C2870;
      v13 = v5;
      v14 = a1[4];
      v15 = a1[5];
      v18 = a1[7];
      v16 = v7;
      v17 = a1[6];
      dispatch_async(v8, v12);
    }

    else
    {
      v9 = a1[7];
      v10 = SESDefaultLogObject();
      v11 = SESCreateAndLogError();
      v9[2](v9, 0, v11);
    }
  }
}

void sub_100040F30(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) appletIdentifier];
  v4 = [*(a1 + 40) publicKeyIdentifier];
  v5 = [*(a1 + 48) ses_sha256];
  v19 = 0;
  v6 = sub_10004851C(v2, v3, v4, v5, 0, &v19);
  v7 = v19;

  if (v7)
  {
    v8 = *(a1 + 72);
    v9 = SESDefaultLogObject();
    v10 = SESCreateAndLogError();
    (*(v8 + 16))(v8, 0, v10);

    v7 = v10;
  }

  else
  {
    v11 = [SESDataAttestation alloc];
    v18 = [*(a1 + 56) clientBundleIdentifier];
    v12 = [v18 copy];
    v13 = [*(a1 + 64) copy];
    v14 = [v6 signedData];
    v15 = [v14 copy];
    v16 = [v6 signature];
    v17 = [v16 copy];
    v9 = [v11 initWithAppBundleID:v12 nonce:v13 signedData:v15 signature:v17];

    (*(*(a1 + 72) + 16))();
  }
}

void sub_100041994(id a1)
{
  v1 = qword_10050CCA8;
  qword_10050CCA8 = &off_1004DC6C8;
}

void sub_1000420D4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000421B0;
  block[3] = &unk_1004C24A8;
  v11 = v6;
  v12 = v5;
  v13 = *(a1 + 32);
  v8 = v5;
  v9 = v6;
  dispatch_async(v7, block);
}

void sub_1000421B0(id *a1)
{
  if (a1[4] || !a1[5])
  {
    v2 = SESDefaultLogObject();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = [a1[6] clientBundleIdentifier];
      v4 = [a1[4] localizedDescription];
      *buf = 138412546;
      v32 = v3;
      v33 = 2112;
      v34 = v4;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "Failed to wake up client with bundleID %@ %@", buf, 0x16u);
    }
  }

  else
  {
    v2 = a1[6];
    objc_sync_enter(v2);
    v5 = a1[6];
    if (v5[11])
    {
      sub_1003AE754(v5[12]);
      sub_1003AE618(*(a1[6] + 12), 1.0);
    }

    else
    {
      v6 = [RBSDomainAttribute attributeWithDomain:@"com.apple.seserviced" name:@"RKESessionBackground"];
      v7 = [RBSAssertion alloc];
      v8 = [a1[6] clientBundleIdentifier];
      v9 = [NSString stringWithFormat:@"RKESession background assertion for %@", v8];
      v10 = +[RBSTarget targetWithPid:](RBSTarget, "targetWithPid:", [a1[5] pid]);
      v30 = v6;
      v11 = [NSArray arrayWithObjects:&v30 count:1];
      v12 = [v7 initWithExplanation:v9 target:v10 attributes:v11];
      v13 = a1[6];
      v14 = v13[11];
      v13[11] = v12;

      v15 = *(a1[6] + 11);
      v29 = 0;
      LOBYTE(v9) = [v15 acquireWithError:&v29];
      v16 = v29;
      if (v9)
      {
        v17 = SESDefaultLogObject();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          v18 = [a1[6] clientBundleIdentifier];
          *buf = 138412290;
          v32 = v18;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Acquired RBSAssertion for %@", buf, 0xCu);
        }

        objc_initWeak(buf, a1[6]);
        v19 = [SESTimer alloc];
        v20 = [a1[6] queue];
        v27[0] = _NSConcreteStackBlock;
        v27[1] = 3221225472;
        v27[2] = sub_100042618;
        v27[3] = &unk_1004C28E0;
        objc_copyWeak(&v28, buf);
        v27[4] = a1[6];
        v21 = sub_1003AE50C(v19, v20, v27);
        v22 = a1[6];
        v23 = v22[12];
        v22[12] = v21;

        sub_1003AE618(*(a1[6] + 12), 1.0);
        objc_destroyWeak(&v28);
        objc_destroyWeak(buf);
      }

      else
      {
        v24 = SESDefaultLogObject();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v32 = v16;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Failed to acquire RBSAssertion %@", buf, 0xCu);
        }

        v25 = a1[6];
        v26 = v25[11];
        v25[11] = 0;
      }
    }

    objc_sync_exit(v2);
  }
}

void sub_100042618(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    objc_sync_enter(v3);
    [WeakRetained[11] invalidate];
    v4 = WeakRetained[11];
    WeakRetained[11] = 0;

    v5 = WeakRetained[12];
    WeakRetained[12] = 0;

    objc_sync_exit(v3);
    v6 = SESDefaultLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = WeakRetained[13];
      v8 = 138412290;
      v9 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Invalidated RBSAssertion for %@", &v8, 0xCu);
    }
  }
}

void sub_100042B84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100042BB8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100042BD0(uint64_t a1, void *a2)
{
  v35 = a2;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v3 = *(a1 + 32);
  v40 = [v3 countByEnumeratingWithState:&v43 objects:v51 count:16];
  if (v40)
  {
    v4 = *v44;
    v36 = a1;
    v37 = *v44;
    v38 = v3;
    do
    {
      for (i = 0; i != v40; i = i + 1)
      {
        if (*v44 != v4)
        {
          objc_enumerationMutation(v3);
        }

        v6 = *(*(&v43 + 1) + 8 * i);
        v42 = 0;
        v7 = sub_10003CCA4(SESEndpointDatabase, v6, &v42);
        v8 = v42;
        v9 = SESDefaultLogObject();
        v10 = v9;
        if (!v8)
        {
          if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
          {
            v13 = [v7 publicKeyIdentifier];
            v14 = [v13 asHexString];
            *buf = 138412290;
            v48 = v14;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Fixing endpoint %@", buf, 0xCu);
          }

          v15 = [KmlRoutingInformation alloc];
          v16 = [v7 readerInfo];
          v10 = [v15 initWithReaderInformation:v16];

          v17 = [v10 regionString];
          if ([v17 length] != 3)
          {
            v18 = SESDefaultLogObject();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v48 = v17;
              _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Invalid region %@", buf, 0xCu);
            }

            v8 = 0;
            goto LABEL_31;
          }

          v18 = [v17 substringWithRange:{2, 1}];
          v19 = [v17 substringToIndex:2];

          v20 = *(a1 + 40);
          v21 = [v10 manufacturer];
          v41 = 0;
          v22 = [v20 getSignatureCertificateFor:v21 environment:v18 region:v19 error:&v41];
          v8 = v41;

          v39 = v22;
          if (v8)
          {
            v23 = SESDefaultLogObject();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v48 = v8;
              _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Failed to retrieve signature certificate %@", buf, 0xCu);
            }

            v3 = v38;
LABEL_30:

            v17 = v19;
            v4 = v37;
LABEL_31:

            goto LABEL_32;
          }

          v23 = getCertificatePublicKey();
          if (v23)
          {
            v24 = [v6 signatureVerificationPK];
            v25 = [v23 isEqualToData:v24];

            if (v25)
            {
              v26 = SESDefaultLogObject();
              if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
              {
                v27 = [v7 publicKeyIdentifier];
                v28 = [v27 asHexString];
                *buf = 138412290;
                v48 = v28;
                v29 = v26;
                v30 = "Nothing to fix for %@";
                goto LABEL_27;
              }
            }

            else
            {
              [v6 setSignatureVerificationPK:v23];
              v26 = SESDefaultLogObject();
              if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
              {
                v27 = [v7 publicKeyIdentifier];
                v28 = [v27 asHexString];
                *buf = 138412290;
                v48 = v28;
                v29 = v26;
                v30 = "Fixed signature certificate PK for %@";
LABEL_27:
                _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, v30, buf, 0xCu);
              }
            }

            a1 = v36;
          }

          else
          {
            v26 = SESDefaultLogObject();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              v31 = [v39 base64];
              *buf = 138412290;
              v48 = v31;
              _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "Failed to retrieve PK %@", buf, 0xCu);
            }
          }

          v3 = v38;

          goto LABEL_30;
        }

        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          v11 = [v7 publicKeyIdentifier];
          v12 = [v11 asHexString];
          *buf = 138412546;
          v48 = v12;
          v49 = 2112;
          v50 = v8;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failed to get endpoint %@ %@", buf, 0x16u);
        }

LABEL_32:
      }

      v40 = [v3 countByEnumeratingWithState:&v43 objects:v51 count:16];
    }

    while (v40);
  }

  v32 = sub_1003AD108(v35);
  v33 = *(*(a1 + 48) + 8);
  v34 = *(v33 + 40);
  *(v33 + 40) = v32;
}

id sub_100043148(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  objc_opt_self();
  v5 = +[SEEndPointCAEntity fetchRequest];
  v10 = 0;
  v6 = sub_1003AD310(v4, v5, &v10);

  v7 = v10;
  if (a3)
  {
    v8 = v7;
    *a3 = v7;
  }

  return v6;
}

id sub_1000431F8(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v8 = a2;
  v9 = a4;
  v10 = objc_opt_self();
  if (v8 && a3)
  {
    v19 = 0;
    v11 = sub_100043148(v10, v9, &v19);
    v12 = v19;
    v13 = v12;
    if (!v11 || v12)
    {
      if (a5)
      {
        v16 = v12;
        v14 = 0;
        *a5 = v13;
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v18 = v8;
      v14 = Find();
    }
  }

  else
  {
    if (a5)
    {
      v15 = SESDefaultLogObject();
      *a5 = SESCreateAndLogError();
    }

    v14 = 0;
  }

  return v14;
}

id sub_100043380(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

id sub_1000433C4(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  objc_opt_self();
  if (v4)
  {
    v5 = [v4 endPointCAData];
    v6 = [SEEndPointCA decodeWithData:v5 error:a3];
LABEL_5:

    goto LABEL_6;
  }

  if (a3)
  {
    v5 = SESDefaultLogObject();
    SESCreateAndLogError();
    *a3 = v6 = 0;
    goto LABEL_5;
  }

  v6 = 0;
LABEL_6:

  return v6;
}

id sub_1000434A0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = a3;
  v8 = a4;
  objc_opt_self();
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_100043608;
  v21 = sub_100043618;
  v22 = 0;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100043620;
  v13[3] = &unk_1004C2930;
  v9 = v6;
  v14 = v9;
  v10 = v7;
  v15 = v10;
  v16 = &v17;
  sub_1003AD2A8(v8, v13);
  v11 = v18[5];

  _Block_object_dispose(&v17, 8);

  return v11;
}

void sub_1000435F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100043608(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100043620(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  v5 = *(*(a1 + 48) + 8);
  obj = *(v5 + 40);
  v6 = [v4 encodeWithError:&obj];
  objc_storeStrong((v5 + 40), obj);
  [*(a1 + 32) setEndPointCAData:v6];

  if (*(*(*(a1 + 48) + 8) + 40) || ([*(a1 + 32) endPointCAData], v11 = objc_claimAutoreleasedReturnValue(), v11, !v11))
  {
    v7 = SESDefaultLogObject();
    v8 = SESCreateAndLogError();
    v9 = *(*(a1 + 48) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    sub_1003AD19C(v3);
  }

  else
  {
    v12 = sub_1003AD108(v3);
    v13 = *(*(a1 + 48) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;
  }
}

void *sub_100043738(uint64_t a1, void *a2, void *IsValid)
{
  v4 = a2;
  v5 = objc_opt_self();
  v6 = sub_1000433C4(v5, v4, IsValid);

  if (v6)
  {
    v7 = [v6 certificates];
    v8 = [v7 lastObject];

    v9 = SecCertificateCreateWithData(0, v8);
    if (v9)
    {
      v10 = v9;
      CFAbsoluteTimeGetCurrent();
      IsValid = SecCertificateIsValid();
      CFRelease(v10);
    }

    else if (IsValid)
    {
      v11 = SESDefaultLogObject();
      v13 = [(__CFData *)v8 asHexString];
      *IsValid = SESCreateAndLogError();

      IsValid = 0;
    }
  }

  else
  {
    IsValid = 0;
  }

  return IsValid;
}

__CFString *sub_100043874(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  if (a2 >= 6)
  {
    if (a3)
    {
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  switch(a2)
  {
    case 3:
      v6 = @"A00000085801010100000001";
      break;
    case 2:
      v6 = @"A00000085802010100000001";
      break;
    case 1:
      v6 = @"A000000809434343444B417631";
      break;
    default:
      if ((a2 & 0xFFFFFFFFFFFFFFFELL) != 4)
      {
        goto LABEL_13;
      }

      v6 = @"A000000909ACCE5501";
      break;
  }

  v7 = [(__CFString *)v6 hexStringAsData];
  v8 = sub_1003AF34C(v5, v7);

  if (!v8)
  {
LABEL_13:
    if (a3)
    {
LABEL_14:
      v9 = SESDefaultLogObject();
      *a3 = SESCreateAndLogError();
    }

LABEL_15:
    v6 = 0;
  }

  return v6;
}

id sub_1000439C0(void *a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, unsigned int a7, unsigned int a8, unsigned __int8 a9, void *a10, void *a11, void *a12, void *a13, void *a14, void *a15, void *a16, void *a17, void *a18, void *a19, void *a20, char a21, unsigned __int8 a22, void *a23)
{
  v27 = a1;
  v28 = a3;
  v29 = a4;
  v30 = a5;
  v31 = a6;
  v129 = a10;
  v128 = a11;
  v127 = a12;
  v125 = a13;
  v119 = a14;
  v120 = a15;
  v121 = a16;
  v122 = a17;
  v126 = a18;
  v124 = a19;
  v123 = a20;
  v32 = SESDefaultLogObject();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
  {
    *buf = 138412802;
    v141 = v28;
    v142 = 2112;
    v143 = v30;
    v144 = 2112;
    v145 = v31;
    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "%@ %@ %@", buf, 0x20u);
  }

  v33 = SESDefaultLogObject();
  if (os_signpost_enabled(v33))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v33, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "PTA_CREATE_ENDPOINT", "", buf, 2u);
  }

  if (!v29 || !v27 || !v30)
  {
    if (a23)
    {
      v36 = SESDefaultLogObject();
      v37 = SESCreateAndLogError();
      goto LABEL_14;
    }

    goto LABEL_23;
  }

  v34 = [@"A000000909ACCE5501" hexStringAsData];
  v35 = [v28 isEqualToData:v34];

  if (!v35)
  {
    if ([v129 length] == 8)
    {
      goto LABEL_16;
    }

    if (a23)
    {
      goto LABEL_11;
    }

LABEL_23:
    v38 = 0;
    goto LABEL_26;
  }

  if ([v129 length] == 16)
  {
LABEL_16:
    v39 = [v31 asAsciiData];
    v36 = v39;
    if (!v39 || ![v39 length] || objc_msgSend(v36, "length") >= 0x1F)
    {
      if (!a23)
      {
        v38 = 0;
        goto LABEL_25;
      }

      v40 = SESDefaultLogObject();
      [v31 length];
      SESCreateAndLogError();
      *a23 = v38 = 0;
      goto LABEL_21;
    }

    v43 = [v29 asAsciiData];
    v40 = v43;
    if (!v43 || ![v43 length] || objc_msgSend(v40, "length") >= 0x1F)
    {
      if (a23)
      {
        v44 = SESDefaultLogObject();
        [v29 length];
        SESCreateAndLogError();
        v114 = v44;
        v45 = v106 = v40;
LABEL_36:
        v38 = 0;
        *a23 = v45;
LABEL_37:

LABEL_38:
        v40 = v106;
LABEL_21:

        goto LABEL_25;
      }

      goto LABEL_68;
    }

    if ([v128 length] != 65)
    {
      if (a23)
      {
        v47 = SESDefaultLogObject();
        [v128 length];
        SESCreateAndLogError();
        v114 = v47;
        v45 = v106 = v40;
        goto LABEL_36;
      }

      goto LABEL_68;
    }

    if ([v127 length] != 15 && objc_msgSend(v127, "length") != 13)
    {
      if (a23)
      {
        v49 = SESDefaultLogObject();
        [v127 length];
        SESCreateAndLogError();
        v114 = v49;
        v45 = v106 = v40;
        goto LABEL_36;
      }

      goto LABEL_68;
    }

    if ([v125 length] != 15 && objc_msgSend(v125, "length") != 13)
    {
      if (a23)
      {
        v50 = SESDefaultLogObject();
        [v125 length];
        SESCreateAndLogError();
        v114 = v50;
        v45 = v106 = v40;
        goto LABEL_36;
      }

      goto LABEL_68;
    }

    if (v126 && (([v126 intValue] & 0x80000000) != 0 || objc_msgSend(v126, "intValue") >= 2))
    {
      if (a23)
      {
        v46 = SESDefaultLogObject();
        [v126 intValue];
        SESCreateAndLogError();
        v114 = v46;
        v45 = v106 = v40;
        goto LABEL_36;
      }

LABEL_68:
      v38 = 0;
      goto LABEL_21;
    }

    if (v124 && (([v124 intValue] & 0x80000000) != 0 || objc_msgSend(v124, "intValue") >= 256))
    {
      if (a23)
      {
        v48 = SESDefaultLogObject();
        [v124 intValue];
        SESCreateAndLogError();
        v114 = v48;
        v45 = v106 = v40;
        goto LABEL_36;
      }

      goto LABEL_68;
    }

    if (v123 && (([v123 intValue] & 0x80000000) != 0 || objc_msgSend(v123, "intValue") >= 256))
    {
      if (a23)
      {
        v51 = SESDefaultLogObject();
        [v123 intValue];
        SESCreateAndLogError();
        v114 = v51;
        v45 = v106 = v40;
        goto LABEL_36;
      }

      goto LABEL_68;
    }

    if (a22 >= 0x11u)
    {
      if (a23)
      {
        v52 = SESDefaultLogObject();
        SESCreateAndLogError();
        v114 = v52;
        v45 = v106 = v40;
        goto LABEL_36;
      }

      goto LABEL_68;
    }

    v106 = v40;
    if (a9 >= 4u)
    {
      v53 = [@"A000000909ACCE5501" hexStringAsData];
      v54 = [v28 isEqualToData:v53];
      v55 = a9 < 8u ? v54 : 0;

      if ((v55 & 1) == 0)
      {
        if (!a23)
        {
          v38 = 0;
          goto LABEL_38;
        }

        v86 = SESDefaultLogObject();
        SESCreateAndLogError();
        v45 = v114 = v86;
        goto LABEL_36;
      }
    }

    v56 = [@"A000000909ACCE5501" hexStringAsData];
    v57 = [v28 isEqualToData:v56];

    v58 = [SESTLV TLVWithTag:77 value:v129];
    if (v57)
    {
      v139[0] = v58;
      v105 = [SESTLV TLVWithTag:24352 value:v36];
      v139[1] = v105;
      v59 = [SESTLV TLVWithTag:66 value:v106];
      v139[2] = v59;
      v111 = [SESTLV TLVWithTag:70 unsignedChar:a7];
      v139[3] = v111;
      v104 = [SESTLV TLVWithTag:71 unsignedChar:a8];
      v139[4] = v104;
      v103 = [SESTLV TLVWithTag:91 value:v128];
      v139[5] = v103;
      v102 = [SESTLV TLVWithTag:81 value:v127];
      v139[6] = v102;
      v101 = [SESTLV TLVWithTag:82 value:v125];
      v139[7] = v101;
      v60 = [NSArray arrayWithObjects:v139 count:8];
      v114 = [v60 mutableCopy];
    }

    else
    {
      v138[0] = v58;
      v105 = [SESTLV TLVWithTag:24352 value:v36];
      v138[1] = v105;
      v59 = [SESTLV TLVWithTag:66 value:v106];
      v138[2] = v59;
      v111 = [SESTLV TLVWithTag:70 unsignedChar:a7];
      v138[3] = v111;
      v104 = [SESTLV TLVWithTag:71 unsignedChar:a8];
      v138[4] = v104;
      v103 = [@"0100" hexStringAsData];
      v102 = [SESTLV TLVWithTag:92 value:v103];
      v138[5] = v102;
      v101 = [SESTLV TLVWithTag:91 value:v128];
      v138[6] = v101;
      v60 = [SESTLV TLVWithTag:81 value:v127];
      v138[7] = v60;
      v100 = [SESTLV TLVWithTag:82 value:v125];
      v138[8] = v100;
      v61 = [NSArray arrayWithObjects:v138 count:9];
      v114 = [v61 mutableCopy];
    }

    v112 = v27;
    if ([v120 count])
    {
      v62 = objc_opt_new();
      v135 = 0u;
      v136 = 0u;
      v133 = 0u;
      v134 = 0u;
      v63 = v120;
      v64 = [v63 countByEnumeratingWithState:&v133 objects:v137 count:16];
      if (v64)
      {
        v65 = *v134;
        do
        {
          for (i = 0; i != v64; i = i + 1)
          {
            if (*v134 != v65)
            {
              objc_enumerationMutation(v63);
            }

            [v62 appendData:*(*(&v133 + 1) + 8 * i)];
          }

          v64 = [v63 countByEnumeratingWithState:&v133 objects:v137 count:16];
        }

        while (v64);
      }

      v27 = v112;
      v67 = [SESTLV TLVWithTag:73 value:v62];
      [v114 addObject:v67];
    }

    if ([v121 unsignedShortValue])
    {
      v68 = +[SESTLV TLVWithTag:unsignedShort:](SESTLV, "TLVWithTag:unsignedShort:", 74, __rev16([v121 unsignedShortValue]));
      [v114 addObject:v68];
    }

    if ([v122 unsignedShortValue])
    {
      v69 = +[SESTLV TLVWithTag:unsignedShort:](SESTLV, "TLVWithTag:unsignedShort:", 75, __rev16([v122 unsignedShortValue]));
      [v114 addObject:v69];
    }

    if ([v119 length])
    {
      v70 = [SESTLV TLVWithTag:78 value:v119];
      [v114 addObject:v70];
    }

    v132 = 0;
    v71 = sub_100044F68(v27, v28, 0, &v132);
    v72 = v132;
    if (v71 <= 1)
    {
      if (a23)
      {
        v118 = SESDefaultLogObject();
        SESCreateAndLogError();
        *a23 = v38 = 0;
      }

      else
      {
        v38 = 0;
      }

      goto LABEL_146;
    }

    if (v126)
    {
      v73 = +[SESTLV TLVWithTag:unsignedChar:](SESTLV, "TLVWithTag:unsignedChar:", 90, [v126 unsignedIntValue]);
      [v114 addObject:v73];
    }

    if (v124)
    {
      v74 = +[SESTLV TLVWithTag:unsignedChar:](SESTLV, "TLVWithTag:unsignedChar:", 134, [v124 unsignedIntValue]);
      [v114 addObject:v74];
    }

    if (v123)
    {
      v75 = +[SESTLV TLVWithTag:unsignedChar:](SESTLV, "TLVWithTag:unsignedChar:", 135, [v123 unsignedIntValue]);
      [v114 addObject:v75];
    }

    if (a21)
    {
      v76 = [SESTLV TLVWithTag:136 value:0];
      [v114 addObject:v76];
    }

    if (a22)
    {
      v77 = [SESTLV TLVWithTag:137 unsignedChar:?];
      [v114 addObject:v77];
    }

    if (a9)
    {
      v78 = [SESTLV TLVWithTag:202 unsignedChar:?];
      [v114 addObject:v78];
    }

    v79 = [SESTLV TLVWithTag:32551 children:v114];
    v117 = v79;
    if (!v79)
    {
      if (a23)
      {
        v116 = SESDefaultLogObject();
        SESCreateAndLogError();
        v27 = v112;
        *a23 = v38 = 0;
      }

      else
      {
        v38 = 0;
        v27 = v112;
      }

      goto LABEL_145;
    }

    v80 = [v79 asData];
    v131 = v72;
    v115 = sub_100045184(v112, v28, v80, 112, 0, 0, 0, &v131);
    v81 = v131;

    if (v81)
    {
      v82 = SESDefaultLogObject();
      if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
      {
        v83 = [v117 asData];
        v84 = [v83 base64];
        *buf = 138412290;
        v141 = v84;
        _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_ERROR, "CreateEndPoint buffer %@", buf, 0xCu);
      }

      if (a23)
      {
        SESDefaultLogObject();
        v85 = v27 = v112;
        *a23 = SESCreateAndLogError();

        v38 = 0;
        v72 = v81;
      }

      else
      {
        v38 = 0;
        v72 = v81;
        v27 = v112;
      }

LABEL_144:

LABEL_145:
LABEL_146:

      goto LABEL_37;
    }

    if ((a2 - 1) < 3)
    {
      v87 = [NSData dataWithHexString:*(&off_1004C29C8 + a2 - 1)];
      if (v87)
      {
        v109 = [SESTLV TLVWithTag:148 value:v87];
        v88 = [v109 asData];
        v72 = sub_100045670(v112, v28, v88);

        if (v72)
        {
          v108 = getCertificatePublicKey();
          v89 = [v108 ses_sha1];
          v90 = sub_100045800(v112, v28, v89);

          if (v90)
          {
            v91 = SESDefaultLogObject();
            if (os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v141 = v90;
              _os_log_impl(&_mh_execute_header, v91, OS_LOG_TYPE_ERROR, "During cleanup: %@", buf, 0xCu);
            }
          }

          if (a23)
          {
            v92 = SESDefaultLogObject();
            *a23 = SESCreateAndLogError();
          }

          v27 = v112;
          v38 = 0;
          goto LABEL_144;
        }
      }
    }

    v130 = 0;
    v93 = [SEEndPoint endPointWithType:a2 appletIdentifier:v28 identifier:v30 certificateData:v115 error:&v130];
    v72 = v130;
    if (v72)
    {
      v94 = SESDefaultLogObject();
      if (os_log_type_enabled(v94, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v94, OS_LOG_TYPE_INFO, "After creating endPoint, couldn't create SEEndPoint object, cleaning up before returning", buf, 2u);
      }

      v95 = getCertificatePublicKey();
      v96 = [v95 ses_sha1];
      v97 = sub_100045800(v112, v28, v96);

      if (v97)
      {
        v98 = SESDefaultLogObject();
        if (os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v141 = v97;
          _os_log_impl(&_mh_execute_header, v98, OS_LOG_TYPE_ERROR, "During cleanup: %@", buf, 0xCu);
        }
      }

      if (a23)
      {
        v99 = SESDefaultLogObject();
        *a23 = SESCreateAndLogError();
      }

      v38 = 0;
    }

    else
    {
      v38 = v93;
    }

    v27 = v112;
    goto LABEL_144;
  }

  if (!a23)
  {
    goto LABEL_23;
  }

LABEL_11:
  v36 = SESDefaultLogObject();
  [v129 length];
  v37 = SESCreateAndLogError();
LABEL_14:
  v38 = 0;
  *a23 = v37;
LABEL_25:

LABEL_26:
  v41 = SESDefaultLogObject();
  if (os_signpost_enabled(v41))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v41, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "PTA_CREATE_ENDPOINT", "", buf, 2u);
  }

  return v38;
}