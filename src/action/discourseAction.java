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
import java.util.Iterator;

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

    private Integer needSegment;
    private String result;
    private Paragraph paragraph;

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
        PrintStream print = new PrintStream(clientSocket.getOutputStream());

        if( this.getNeedSegment() == 1 ) print.println( 1 + this.getInputSentence() );
        else print.println( 0 + this.getInputSentence() );

        BufferedReader bReader = new BufferedReader( new InputStreamReader( clientSocket.getInputStream() ) );
        StringBuilder line = new StringBuilder(bReader.readLine());
        System.out.println(line);

        bReader.close();
        clientSocket.close();

        result    = line.toString();
        paragraph = new Paragraph(result);

        //return line.toString().replaceAll("ne=\"nc\"", "ne=\"Nz\"");

        return SUCCESS;
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

    public Paragraph getParagraph() {
        return paragraph;
    }

    public void setParagraph(Paragraph paragraph) {
        this.paragraph = paragraph;
    }

    public Integer getNeedSegment() {
        return needSegment;
    }

    public void setNeedSegment(Integer needSegment) {
        this.needSegment = needSegment;
    }
}
