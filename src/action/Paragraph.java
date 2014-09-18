package action;

import org.dom4j.*;

import java.util.ArrayList;
import java.util.Iterator;

/**
 * Created with IntelliJ IDEA.
 * User: Ji JianHui
 * Time: 2014-05-05 18:41
 * Email: jhji@ir.hit.edu.cn
 */
public class Paragraph
{
    private ArrayList<Sentence> sentences;
    private ArrayList<CrossSense> crossSenses;

    public Paragraph(String resultXML) throws DocumentException
    {
        sentences   = new ArrayList<Sentence>();
        crossSenses = new ArrayList<CrossSense>();

        Document domObj  = DocumentHelper.parseText(resultXML);
        Element paraNode = domObj.getRootElement().element("para");

        Element interSenseNode = paraNode.element("InterSentenceSense");
        Element crossSenseNode = paraNode.element("CrossSentenceSense");

        //获取句内关系和句间关系结果
        this.getInterSense(interSenseNode);
        this.getCrossSense(crossSenseNode);
    }

    private void getInterSense(Element interSenseRootNode)
    {
        //下面的每一个Sentence
        for(Iterator ite = interSenseRootNode.elementIterator(); ite.hasNext(); )
        {
            Element sentNode = (Element) ite.next();
            Attribute attrib = sentNode.attribute("content");

            Sentence  sent   = new Sentence(attrib.getText());

            //每个Sentence下面的每个InterSentenceSense
            for(Iterator i = sentNode.elementIterator(); i.hasNext(); )
            {
                Element senseNode = (Element) i.next();
                InterSense interSense = new InterSense();

                interSense.setType(senseNode.attributeValue("type"));
                interSense.setRelNO(senseNode.attributeValue("NO"));
                interSense.setRelContent(senseNode.attributeValue("content"));

                Element arg1Node = senseNode.element("arg1");
                interSense.setArg1Content( arg1Node.getText() );

                Element arg2Node = senseNode.element("arg2");
                interSense.setArg2Content(arg2Node.getText());

                if(interSense.getType().equalsIgnoreCase("Explicit"))
                {
                    Element connNode = senseNode.element("connective");
                    interSense.setConnContent(connNode.getText());
                }

                sent.getInterSenses().add(interSense);
            }

            this.sentences.add(sent);
        }
    }

    private void getCrossSense(Element crossSenseRootNode)
    {
        //下面的每一个Cross Sense
        for(Iterator ite = crossSenseRootNode.elementIterator(); ite.hasNext(); )
        {
            Element crossNode = (Element) ite.next();
            CrossSense crossSense = new CrossSense();

            crossSense.setType( crossNode.attributeValue("type") );
            crossSense.setRelNO( crossNode.attributeValue("NO") );
            crossSense.setRelContent( crossNode.attributeValue("content"));

            Element arg1Node = crossNode.element("arg1");
            crossSense.setArg1Content(arg1Node.getText());
            crossSense.setArg1SentID(Integer.valueOf(arg1Node.attributeValue("sentID")));

            Element arg2Node = crossNode.element("arg2");
            crossSense.setArg2Content(arg2Node.getText());
            crossSense.setArg2SentID(Integer.valueOf(arg2Node.attributeValue("sentID")));

            if( crossSense.getType().equalsIgnoreCase("Explicit") ){
                Element connNode = crossNode.element("connective");
                crossSense.setConnContent(connNode.getText());
                crossSense.setConnSentID( Integer.valueOf(connNode.attributeValue("sentID")) );
            }
            this.crossSenses.add(crossSense);
        }
    }

    public ArrayList<Sentence> getSentences() {
        return sentences;
    }

    public void setSentences(ArrayList<Sentence> sentences) {
        this.sentences = sentences;
    }

    public ArrayList<CrossSense> getCrossSenses() {
        return crossSenses;
    }

    public void setCrossSenses(ArrayList<CrossSense> crossSenses) {
        this.crossSenses = crossSenses;
    }
}
