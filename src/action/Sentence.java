package action;

import java.util.ArrayList;

/**
 * Created with IntelliJ IDEA.
 * User: Ji JianHui
 * Time: 2014-05-05 18:41
 * Email: jhji@ir.hit.edu.cn
 */
public class Sentence
{
    private String content;
    private ArrayList<InterSense> interSenses;

    public Sentence(String content){
        this.content = content;
        this.interSenses = new ArrayList<InterSense>();
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public ArrayList<InterSense> getInterSenses() {
        return interSenses;
    }

    public void setInterSenses(ArrayList<InterSense> interSenses) {
        this.interSenses = interSenses;
    }
}
