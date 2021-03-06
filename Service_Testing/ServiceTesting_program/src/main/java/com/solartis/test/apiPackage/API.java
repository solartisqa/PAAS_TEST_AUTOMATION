package com.solartis.test.apiPackage;

import java.util.LinkedHashMap;

import com.solartis.test.Configuration.PropertiesHandle;
import com.solartis.test.exception.APIException;
import com.solartis.test.exception.RequestFormatException;

public interface API 
{
	public String tokenGenerator(PropertiesHandle config) throws APIException;
	public void LoadSampleRequest(LinkedHashMap<String, String> InputData) throws APIException;
	public void PumpDataToRequest(LinkedHashMap<String, String> InputData) throws APIException;
	public void AddHeaders(String Token) throws APIException;
	public void SendAndReceiveData() throws APIException;
	public LinkedHashMap<String, String> SendResponseDataToFile(LinkedHashMap<String, String> output) throws APIException,RequestFormatException;
	public LinkedHashMap<String, String> CompareFunction(LinkedHashMap<String, String> inputrow, LinkedHashMap<String, String> output) throws APIException;
	public String RequestToString(String Token) throws APIException;
	public String ResponseToString() throws APIException;
}
