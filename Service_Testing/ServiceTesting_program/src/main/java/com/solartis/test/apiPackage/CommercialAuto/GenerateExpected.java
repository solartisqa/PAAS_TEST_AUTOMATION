package com.solartis.test.apiPackage.CommercialAuto;

import java.sql.SQLException;
import java.util.LinkedHashMap;
import java.util.Map.Entry;

import com.solartis.test.Configuration.PropertiesHandle;
import com.solartis.test.exception.DatabaseException;
import com.solartis.test.util.api.DBColoumnVerify;
import com.solartis.test.util.common.DatabaseOperation;

public class GenerateExpected 
{
	protected DatabaseOperation configTable = null;
	protected DatabaseOperation inputoutputtable;
	protected DatabaseOperation expectedMelTable;
	protected PropertiesHandle configFile;
	protected DBColoumnVerify verify;
	
	public GenerateExpected(PropertiesHandle configFile)
	{
		this.configFile = configFile;
		inputoutputtable = new DatabaseOperation();
		configTable = new DatabaseOperation();
		expectedMelTable = new DatabaseOperation();
		verify= new DBColoumnVerify();
	}

	public void generateExpectedMel(PropertiesHandle configFile, LinkedHashMap<String, String> inputrow, LinkedHashMap<String, String> output) throws DatabaseException, SQLException
	{
		expectedMelTable.GetDataObjects("SELECT * FROM Output_FormSelection_Expected");		
		if(inputrow.get("Flag_for_execution").equals("Y"))
		{
			LinkedHashMap<Integer, LinkedHashMap<String, String>> coverageData = configTable.GetDataObjects("Select * from ConditionTable_CA_FormSelection");
			for (Entry<Integer, LinkedHashMap<String, String>> entry : coverageData.entrySet())	
			{
				LinkedHashMap<String, String> configtablerow = entry.getValue();
				if(configtablerow.get("Flag_for_execution").equals("Y"))
				{
					if(verify.ConditionReading(configtablerow.get("Condition"), inputrow))
					{
						String insterQuery = "INSERT INTO Output_FormSelection_Expected VALUES("+inputrow.get("S_No")+", temp2)";	
						StringBuffer temp2 = new StringBuffer();
						
						temp2=temp2.append("'").append(configtablerow.get("FormName")).append("'").append(",");
						temp2=temp2.append("'").append(configtablerow.get("FormNumber")).append("'").append(",");
						temp2=temp2.append("'").append(configtablerow.get("FormType")).append("'").append(",");
						temp2=temp2.append("'").append(configtablerow.get("FormHierachy")).append("'").append(",");
						temp2=temp2.append("'").append(configtablerow.get("Sequence")).append("'").append(",");
						temp2=temp2.append("'").append(configtablerow.get("State")).append("'").append(",");
						
						insterQuery=insterQuery.replace("temp2", temp2.substring(0, temp2.length() - 1));
						temp2=temp2.delete(0, temp2.length());
						System.out.println(insterQuery);
						expectedMelTable.insertRow(insterQuery);
					}
				}
			}
		}
	}	
	
	public String analyser(String rowNumber) throws DatabaseException
	{
		StringBuffer temp2 = new StringBuffer();
		LinkedHashMap<Integer, LinkedHashMap<String, String>> coverageData = configTable.GetDataObjects("SELECT  Output_FormSelection.FormName, Output_FormSelection.FormNumber "
				+ "FROM Output_FormSelection "
				+ "WHERE  Output_FormSelection.S_No='"+rowNumber+"' and Output_FormSelection.FormNumber NOT IN "
				+ "( "
				+ "SELECT  Output_FormSelection_Expected.FormNumber "
				+ "FROM    Output_FormSelection_Expected WHERE  Output_FormSelection_Expected.S_No='"+rowNumber+"' "
				+ ") "
				+ "UNION ALL "
				+ "SELECT  Output_FormSelection_Expected.FormName, Output_FormSelection_Expected.FormNumber "
				+ "FROM Output_FormSelection_Expected "
				+ "WHERE   Output_FormSelection_Expected.S_No='"+rowNumber+"' and Output_FormSelection_Expected.FormNumber NOT IN "
				+ "( "
				+ "SELECT  Output_FormSelection.FormNumber "
				+ "FROM Output_FormSelection WHERE Output_FormSelection.S_No='"+rowNumber+"' "
				+ ")");
		for (Entry<Integer, LinkedHashMap<String, String>> entry : coverageData.entrySet())	
		{
			LinkedHashMap<String, String> result = entry.getValue();
			
			temp2=temp2.append(result.get("FormNumber")).append(", ");
		}
		temp2=temp2.delete(temp2.length()-2, temp2.length());
		System.out.println(temp2);
		return temp2.toString();
	}
}
