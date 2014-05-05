package action;

import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.convention.annotation.*;
import org.dom4j.DocumentException;
import org.dom4j.DocumentHelper;
import org.dom4j.Document;
import org.dom4j.Element;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.PrintStream;
import java.net.Socket;

/**
 * Created with IntelliJ IDEA.
 * User: Ji JianHui
 * Time: 2014-04-17 16:04
 * Email: jhji@ir.hit.edu.cn
 */

@Namespace("/")
public class discourseAction extends ActionSupport
{
    private String inputSentence;
    private Socket clientSocket;

    private String result;
    private String connWord;
    private String arg1;
    private String arg2;
    private String expRelType;
    private double expRelProbality;

    public String getInputSentence() {
        return inputSentence;
    }

    public void setInputSentence(String inputSentence) {
        this.inputSentence = inputSentence;
    }

    /**用于展示分析界面**/
    public String dpParseDemo()
    {
        return  SUCCESS;
    }

    /**处理分析结果**/
    public String ajaxDPParse() throws Exception
    {
        clientSocket = new Socket("localhost", 8090);

        //request = request.substring(1);

        PrintStream print = new PrintStream(clientSocket.getOutputStream());
        print.println(this.inputSentence);

        BufferedReader bReader = new BufferedReader( new InputStreamReader( clientSocket.getInputStream() ) );
        StringBuilder line = new StringBuilder(bReader.readLine());
        line.append(bReader.readLine());

        bReader.close();
        clientSocket.close();

        String result = line.toString();

        //return line.toString().replaceAll("ne=\"nc\"", "ne=\"Nz\"");

        return SUCCESS;
    }

    private void processResult(String resultXML) throws DocumentException
    {
        Document domObj  = DocumentHelper.parseText(result);
        Element paraNode = domObj.getRootElement().element("para");

        Element interSenseNode = paraNode.element("InterSentenceSense");
        Element crossSenseNode = paraNode.element("CrossSentenceSense");


    }

    public Socket getClientSocket() {
        return clientSocket;
    }

    public void setClientSocket(Socket clientSocket) {
        this.clientSocket = clientSocket;
    }

    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        this.result = result;
    }

    public String getConnWord() {
        return connWord;
    }

    public void setConnWord(String connWord) {
        this.connWord = connWord;
    }

    public String getArg1() {
        return arg1;
    }

    public void setArg1(String arg1) {
        this.arg1 = arg1;
    }

    public String getArg2() {
        return arg2;
    }

    public void setArg2(String arg2) {
        this.arg2 = arg2;
    }

    public String getExpRelType() {
        return expRelType;
    }

    public void setExpRelType(String expRelType) {
        this.expRelType = expRelType;
    }

    public double getExpRelProbality() {
        return expRelProbality;
    }

    public void setExpRelProbality(double expRelProbality) {
        this.expRelProbality = expRelProbality;
    }
}
