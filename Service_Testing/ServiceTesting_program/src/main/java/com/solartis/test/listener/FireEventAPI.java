package com.solartis.test.listener;

import java.util.LinkedHashMap;
import java.util.LinkedList;

import com.solartis.test.Configuration.PropertiesHandle;
import com.solartis.test.apiPackage.API;
import com.solartis.test.exception.APIException;
import com.solartis.test.exception.RequestFormatException;

public class FireEventAPI implements API
{
	protected API api= null;
	
	
	public FireEventAPI(API api)
	{
		this.api=api;
		
	}
	
	protected LinkedList<Listener> listeners1 = new LinkedList<Listener>();

	public void addListener(Listener listener){
	    listeners1.add((Listener) listener);
	}

	public boolean removeListener(Listener listener){
	    return listeners1.remove(listener);
	}
	
	@Override
	public void LoadSampleRequest(LinkedHashMap<String, String> InputData) throws APIException 
	{
		// TODO Auto-generated method stub
		for (Listener listen : listeners1)
			listen.beforeLoadSampleRequest();
		try
		{
			api.LoadSampleRequest(InputData);
		}
		catch(APIException e)
		{
			for (Listener listen : listeners1)
				listen.onError(e);
			throw new APIException(e);
		}
		for (Listener listen : listeners1)
			listen.afterLoadSampleRequest();
	}

	@Override
	public void PumpDataToRequest(LinkedHashMap<String, String> InputData) throws APIException 
	{
		// TODO Auto-generated method stub
		for (Listener listen : listeners1)
			listen.beforePumpDataToRequest();
		try
		{
			api.PumpDataToRequest(InputData);
		}
		catch(APIException e)
		{
			for (Listener listen : listeners1)
				listen.onError(e);
			e.printStackTrace();
			throw new APIException(e);
		}
		for (Listener listen : listeners1)
			listen.afterPumpDataToRequest();
	}
	
	@Override
	public String RequestToString(String Token) throws APIException 
	{
		// TODO Auto-generated method stub
		for (Listener listen : listeners1)
			listen.beforeRequestToString();
		String requesttoString="";
		try
		{
			api.RequestToString(Token);
		}
		catch(APIException e)
		{
			for (Listener listen : listeners1)
				listen.onError(e);
			throw new APIException(e);
		}
		for (Listener listen : listeners1)
			listen.afterRequestToString();
		return requesttoString;
	}

	@Override
	public void AddHeaders(String Token) throws APIException 
	{
		// TODO Auto-generated method stub
		for (Listener listen : listeners1)
			listen.beforeAddHeaders();
		try
		{
			api.AddHeaders(Token);
		}
		catch(APIException e)
		{
			for (Listener listen : listeners1)
				listen.onError(e);
			throw new APIException(e);
		}
		for (Listener listen : listeners1)
			listen.afterAddHeaders();
	}

	@Override
	public void SendAndReceiveData() throws APIException 
	{
		// TODO Auto-generated method stub
		for (Listener listen : listeners1)
			listen.beforeSendAndReceiveData();
		try
		{
			api.SendAndReceiveData();
		}
		catch(APIException e)
		{
			for (Listener listen : listeners1)
				listen.onError(e);
			throw new APIException(e);
		}
		for (Listener listen : listeners1)
			listen.afterSendAndReceiveData();
	}

	@Override
	public LinkedHashMap<String, String> SendResponseDataToFile(LinkedHashMap<String, String> output) throws APIException, RequestFormatException 
	{
		// TODO Auto-generated method stub
		for (Listener listen : listeners1)
			listen.beforeSendResponseDataToFile();
		try
		{
			output =api.SendResponseDataToFile(output);
		}
		catch(APIException e)
		{
			for (Listener listen : listeners1)
				listen.onError(e);
			throw new APIException(e);
		}
		for (Listener listen : listeners1)
			listen.afterSendResponseDataToFile();
		return output;
	}

	@Override
	public LinkedHashMap<String, String> CompareFunction(LinkedHashMap<String, String> input ,LinkedHashMap<String, String> output) throws APIException 
	{
		// TODO Auto-generated method stub
		for (Listener listen : listeners1)
			listen.beforeCompareFunction();
		try
		{
			output =api.CompareFunction(input,output);
		}
		catch(APIException e)
		{
			for (Listener listen : listeners1)
				listen.onError(e);
			throw new APIException(e);
		}
		for (Listener listen : listeners1)
			listen.afterCompareFunction();
		return output;
	}

	

	@Override
	public String ResponseToString() throws APIException 
	{
		// TODO Auto-generated method stub
		for (Listener listen : listeners1)
			listen.beforeResponseToString();
		String ResponseToString = "";
		try
		{
			ResponseToString=api.ResponseToString();
		}
		catch(APIException e)
		{
			for (Listener listen : listeners1)
				listen.onError(e);
			throw new APIException(e);
		}
		for (Listener listen : listeners1)
			listen.afterResponseToString();
		return ResponseToString;
	}

	@Override
	public String tokenGenerator(PropertiesHandle config) throws APIException {
		for (Listener listen : listeners1)
			listen.beforeTokenGenerator();
		String token ="";
		try
		{
			token=api.tokenGenerator(config);
		}
		catch(APIException e)
		{
			for (Listener listen : listeners1)
				listen.onError(e);
			throw new APIException(e);
		}
		for (Listener listen : listeners1)
			listen.afterTokenGeneratior();
		return token;
	}	
	
}
