package action;

/**
 * Created with IntelliJ IDEA.
 * User: Ji JianHui
 * Time: 2014-05-05 18:41
 * Email: jhji@ir.hit.edu.cn
 */
public class InterSense {

    private String type;
    private String relNO;
    private String relContent;

    private String arg1Content;
    private String arg2Content;
    private String connContent;

    public InterSense()
    {
        this.type   = null;
        this.relNO  = null;

        arg1Content = null;
        arg2Content = null;
        connContent = null;
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

    public String getConnContent() {
        return connContent;
    }

    public void setConnContent(String connContent) {
        this.connContent = connContent;
    }

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

    public String getRelContent() {
        return relContent;
    }

    public void setRelContent(String relContent) {
        this.relContent = relContent;
    }
}
