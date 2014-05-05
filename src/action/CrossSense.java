package action;

/**
 * Created with IntelliJ IDEA.
 * User: Ji JianHui
 * Time: 2014-05-05 18:42
 * Email: jhji@ir.hit.edu.cn
 */
public class CrossSense
{
    private String type;
    private String relNO;

    private String connContent;
    private String arg1Content;
    private String arg2Content;

    private Integer connSentID;
    private Integer connBeginIndex;

    private Integer arg1SentID;
    private Integer arg2SentID;

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getRelNO() {
        return relNO;
    }

    public void setRelNO(String relNO) {
        this.relNO = relNO;
    }

    public String getConnContent() {
        return connContent;
    }

    public void setConnContent(String connContent) {
        this.connContent = connContent;
    }

    public String getArg1Content() {
        return arg1Content;
    }

    public void setArg1Content(String arg1Content) {
        this.arg1Content = arg1Content;
    }

    public String getArg2Content() {
        return arg2Content;
    }

    public void setArg2Content(String arg2Content) {
        this.arg2Content = arg2Content;
    }

    public Integer getConnSentID() {
        return connSentID;
    }

    public void setConnSentID(Integer connSentID) {
        this.connSentID = connSentID;
    }

    public Integer getConnBeginIndex() {
        return connBeginIndex;
    }

    public void setConnBeginIndex(Integer connBeginIndex) {
        this.connBeginIndex = connBeginIndex;
    }

    public Integer getArg1SentID() {
        return arg1SentID;
    }

    public void setArg1SentID(Integer arg1SentID) {
        this.arg1SentID = arg1SentID;
    }

    public Integer getArg2SentID() {
        return arg2SentID;
    }

    public void setArg2SentID(Integer arg2SentID) {
        this.arg2SentID = arg2SentID;
    }
}
