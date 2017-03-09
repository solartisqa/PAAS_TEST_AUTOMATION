package apiPackage;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.sql.SQLException;

import org.dom4j.DocumentException;
import org.json.simple.parser.ParseException;

import Supporting_Classes.DatabaseOperation;

public interface API 
{
	public void LoadSampleRequest(DatabaseOperation InputData) throws SQLException;
	public void PumpDataToRequest() throws SQLException, IOException, DocumentException, ParseException;
	public void AddHeaders() throws IOException;
	public void SendAndReceiveData() throws SQLException;
	public DatabaseOperation SendResponseDataToFile(DatabaseOperation output) throws UnsupportedEncodingException, IOException, ParseException, DocumentException, SQLException;
	public DatabaseOperation CompareFunction(DatabaseOperation output) throws SQLException;
	public String RequestToString() throws IOException, ParseException, DocumentException;
	public String ResponseToString() throws IOException, ParseException, DocumentException;
	
}
