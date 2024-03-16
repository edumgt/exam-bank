package com.sherpa.exambank.util.itext;

import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.PageSize;
import com.itextpdf.text.pdf.PdfWriter;
import com.itextpdf.tool.xml.XMLWorker;
import com.itextpdf.tool.xml.XMLWorkerFontProvider;
import com.itextpdf.tool.xml.XMLWorkerHelper;
import com.itextpdf.tool.xml.css.CssFile;
import com.itextpdf.tool.xml.css.StyleAttrCSSResolver;
import com.itextpdf.tool.xml.html.CssAppliers;
import com.itextpdf.tool.xml.html.CssAppliersImpl;
import com.itextpdf.tool.xml.html.Tags;
import com.itextpdf.tool.xml.parser.XMLParser;
import com.itextpdf.tool.xml.pipeline.css.CSSResolver;
import com.itextpdf.tool.xml.pipeline.css.CssResolverPipeline;
import com.itextpdf.tool.xml.pipeline.end.PdfWriterPipeline;
import com.itextpdf.tool.xml.pipeline.html.HtmlPipeline;
import com.itextpdf.tool.xml.pipeline.html.HtmlPipelineContext;
import org.springframework.stereotype.Component;

import java.io.*;
import java.nio.charset.StandardCharsets;

/*
* HTML TO PDF FILE CONVERTER USING ITEXT

* Using Library
* iText 5.5.13.3
* iText-xmlworker 5.5.13.3
* itext.pdfa 7.2.3
    Gradle
    implementation 'com.itextpdf:itextpdf:5.5.13.3'
    implementation 'com.itextpdf.tool:xmlworker:5.5.13.3'
    implementation 'com.itextpdf:pdfa:7.2.3'
*/
@Component
public class ItextPdfUtil {
    /**
     * PDF 유무를 체크한 후 PDF 파일이 없을 경우 PDF 파일 생성 메소드 실행
     * @param pdfDto
     * @return
     */
    public File checkPDF (ItextPdfDto pdfDto) {
        File file = new File(pdfDto.getPdfFilePath(),pdfDto.getPdfFileName());
        int fileSize = (int) file.length();
        if (fileSize == 0) {
            createPDF(pdfDto);
            file = new File(pdfDto.getPdfFilePath(),pdfDto.getPdfFileName());
        }
        return file;
    }

    /*
     * iText 라이브러리를 사용한 PDF 파일 생성
     * CSS , Font 설정 기능 포함
     * */
    public void createPDF(ItextPdfDto itextPdfDto) {

        // 최초 문서 사이즈 설정
        Document document = new Document(PageSize.A4, 30, 30, 30, 30);

        try {
            // PDF 파일 생성
            PdfWriter pdfWriter = PdfWriter.getInstance(document, new FileOutputStream(itextPdfDto.getPdfFilePath()+itextPdfDto.getPdfFileName()));
            // PDF 파일에 사용할 폰트 크기 설정
            pdfWriter.setInitialLeading(12.5f);
            // PDF 파일 열기
            document.open();

            // XMLWorkerHelper xmlWorkerHelper = XMLWorkerHelper.getInstance();

            // CSS 설정 변수 세팅
            CSSResolver cssResolver = new StyleAttrCSSResolver();
            CssFile cssFile = null;

            try {
                /*
                 * CSS 파일 설정
                 * 기존 방식은 FileInputStream을 사용했으나, jar 파일로 빌드 시 파일을 찾을 수 없는 문제가 발생
                 * 따라서, ClassLoader를 사용하여 파일을 읽어오는 방식으로 변경
                 */
                InputStream cssStream = getClass().getClassLoader().getResourceAsStream("static/css/ItextPdf.css");

                // CSS 파일 담기
                cssFile = XMLWorkerHelper.getCSS(cssStream);
//                cssFile = XMLWorkerHelper.getCSS(new FileInputStream("src/main/resources/static/css/test.css"));
            } catch (Exception e) {
                throw new IllegalArgumentException("PDF CSS 파일을 찾을 수 없습니다.");
            }

            if(cssFile == null) {
                throw new IllegalArgumentException("PDF CSS 파일을 찾을 수 없습니다.");
            }

            // CSS 파일 적용
            cssResolver.addCss(cssFile);

            // PDF 파일에 HTML 내용 삽입
            XMLWorkerFontProvider fontProvider = new XMLWorkerFontProvider(XMLWorkerFontProvider.DONTLOOKFORFONTS);

            /*
             * 폰트 설정
             * CSS 와 다르게, fontProvider.register() 메소드를 사용하여 폰트를 등록해야 함
             * 해당 메소드 내부에서 경로처리를 하여 개발, 배포 시 폰트 파일을 찾을 수 있도록 함
             * */
            try {
                fontProvider.register("static/font/KoPubWorldDotumMedium.ttf", "KoPubWorldDotum");
            } catch (Exception e) {
                throw new IllegalArgumentException("PDF 폰트 파일을 찾을 수 없습니다.");
            }

            if(fontProvider.getRegisteredFonts() == null) {
                throw new IllegalArgumentException("PDF 폰트 파일을 찾을 수 없습니다.");
            }

            // 사용할 폰트를 담아두었던 내용을
            // CSSAppliersImpl에 담아 적용
            CssAppliers cssAppliers = new CssAppliersImpl(fontProvider);

            // HTML Pipeline 생성
            HtmlPipelineContext htmlPipelineContext = new HtmlPipelineContext(cssAppliers);
            htmlPipelineContext.setTagFactory(Tags.getHtmlTagProcessorFactory());

            // ========================================================================================
            // Pipelines
            PdfWriterPipeline pdfWriterPipeline = new PdfWriterPipeline(document, pdfWriter);
            HtmlPipeline htmlPipeline = new HtmlPipeline(htmlPipelineContext, pdfWriterPipeline);
            CssResolverPipeline cssResolverPipeline = new CssResolverPipeline(cssResolver, htmlPipeline);
            // ========================================================================================


            // ========================================================================================
            // XMLWorker
            XMLWorker xmlWorker = new XMLWorker(cssResolverPipeline, true);
            XMLParser xmlParser = new XMLParser(true, xmlWorker, StandardCharsets.UTF_8);
            // ========================================================================================


            /* HTML 내용을 담은 String 변수
            주의점
            1. HTML 태그는 반드시 닫아야 함
            2. xml 기준 html 태그 확인( ex : <p> </p> , <img/> , <col/> )
            위 조건을 지키지 않을 경우 DocumentException 발생
            */
            String htmlStr = getHtml(itextPdfDto.getPdfCode());

            // HTML 내용을 PDF 파일에 삽입
            StringReader stringReader = new StringReader(htmlStr);
            // XML 파싱
            xmlParser.parse(stringReader);
            // PDF 문서 닫기
            document.close();
            // PDF Writer 닫기
            pdfWriter.close();

        } catch (DocumentException e1) {
            throw new IllegalArgumentException("PDF 라이브러리 설정 에러");
        } catch (FileNotFoundException e2) {
            e2.printStackTrace();
            throw new IllegalArgumentException("PDF 파일 생성중 에러");
        } catch (IOException e3) {
            e3.printStackTrace();
            throw new IllegalArgumentException("PDF 파일 생성중 에러2");
        } catch (Exception e4) {
            e4.printStackTrace();
            e4.getMessage();
            throw new IllegalArgumentException("PDF 파일 생성중 에러3");
        }
        finally {
            try {
                document.close();
            } catch (Exception e) {
                System.out.println("PDF 파일 닫기 에러");
                e.printStackTrace();
            }
        }

    }

    // 사용할 html 코드를 가져오는 메소드
    public String getHtml(String code) {

        String return_html = "";

        switch (code) {
            case "jeon" :
                return_html = "<html>" +
                        "<body>" +
                        "<h1>jeon</h1>" +
                        "</body>" +
                        "</html>";
                break;
            case "nam" :
                return_html = "<html>" +
                        "<body>" +
                        "<h1>nam</h1>" +
                        "<p>CSS 테스트 입니다.</p>" +
                        "</body>" +
                        "</html>";
                break;
            case "hyeok" :
                return_html = "<html>" +
                        "<body>" +
                        "<h1>hyeok</h1>" +
                        "<p>이미지 테스트 합니다.</p>" +
                        "<img src='https://itemfactory-bucket.s3.ap-northeast-2.amazonaws.com/upload/capture/tsherpa/passage/24310/24310.svg' />" +
                        "</body>" +
                        "</html>";
                break;
            case "testPassage" :
                return_html = "<html>\n" +
                        "\n" +
                        "<head></head>\n" +
                        "\n" +
                        "<body>\n" +
                        "  <div class='paragraph'\n" +
                        "    style='border-left:0.2mm none;border-right:0.2mm none;border-top:0.2mm none;border-bottom:0.2mm none;text-indent: 0px;margin-left: 0px;margin-right: 0px;'>\n" +
                        "    <span class='txt'>다음 시를 읽고, 물음에 답하시오.</span>\n" +
                        "  </div>\n" +
                        "  <div class='paragraph'\n" +
                        "    style='border-left:0.2mm none;border-right:0.2mm none;border-top:0.2mm none;border-bottom:0.2mm none;text-indent: 0px;margin-left: 0px;margin-right: 0px;'>\n" +
                        "    <span class='txt'>\n" +
                        "      <table\n" +
                        "        style='margin-left : 6px;padding-top : 3px;padding-left : 3px;display : inline-table;vertical-align : middle;width : 100%;padding-bottom : 3px;margin-top : 1px;margin-bottom : 1px;padding-right : 3px;margin-right : 6px;'>\n" +
                        "        <caption></caption>\n" +
                        "        <colgroup>\n" +
                        "          <col style='width: 100%'/>\n" +
                        "        </colgroup>\n" +
                        "        <tbody>\n" +
                        "          <tr>\n" +
                        "            <td\n" +
                        "              style='border-top:0.24mm solid; border-bottom:0.24mm solid; border-right:0.24mm solid; border-left:0.24mm solid; padding-top : 1px;padding-left : 6px;vertical-align : middle;padding-bottom : 1px;height : 3px;padding-right : 6px;'\n" +
                        "              colspan='1' rowspan='1'>\n" +
                        "              <div class='paragraph'\n" +
                        "                style='border-left:0.2mm none;border-right:0.2mm none;border-top:0.2mm none;border-bottom:0.2mm none;text-indent: 13px;margin-left: 0px;margin-right: 0px;'>\n" +
                        "                <span class='txt'>눈이 내린다</span>\n" +
                        "              </div>\n" +
                        "              <div class='paragraph'\n" +
                        "                style='border-left:0.2mm none;border-right:0.2mm none;border-top:0.2mm none;border-bottom:0.2mm none;text-indent: 13px;margin-left: 0px;margin-right: 0px;'>\n" +
                        "                <span class='txt'>봄이라서</span>\n" +
                        "              </div>\n" +
                        "              <div class='paragraph'\n" +
                        "                style='border-left:0.2mm none;border-right:0.2mm none;border-top:0.2mm none;border-bottom:0.2mm none;text-indent: 13px;margin-left: 0px;margin-right: 0px;'>\n" +
                        "                <span class='txt'>㉠</span><span class='txt' style='text-decoration : underline;'>봄빛처럼 포근한 눈</span>\n" +
                        "              </div>\n" +
                        "              <div class='paragraph'\n" +
                        "                style='border-left:0.2mm none;border-right:0.2mm none;border-top:0.2mm none;border-bottom:0.2mm none;text-indent: 13px;margin-left: 0px;margin-right: 0px;'>\n" +
                        "                <span class='txt'>&nbsp; </span>\n" +
                        "              </div>\n" +
                        "              <div class='paragraph'\n" +
                        "                style='border-left:0.2mm none;border-right:0.2mm none;border-top:0.2mm none;border-bottom:0.2mm none;text-indent: 13px;margin-left: 0px;margin-right: 0px;'>\n" +
                        "                <span class='txt'>담장 위에 쌓이는 봄눈</span>\n" +
                        "              </div>\n" +
                        "              <div class='paragraph'\n" +
                        "                style='border-left:0.2mm none;border-right:0.2mm none;border-top:0.2mm none;border-bottom:0.2mm none;text-indent: 13px;margin-left: 0px;margin-right: 0px;'>\n" +
                        "                <span class='txt'>나무 위에 쌓이는 봄눈</span>\n" +
                        "              </div>\n" +
                        "              <div class='paragraph'\n" +
                        "                style='border-left:0.2mm none;border-right:0.2mm none;border-top:0.2mm none;border-bottom:0.2mm none;text-indent: 13px;margin-left: 0px;margin-right: 0px;'>\n" +
                        "                <span class='txt'>마당 위에 쌓이는 봄눈</span>\n" +
                        "              </div>\n" +
                        "              <div class='paragraph'\n" +
                        "                style='border-left:0.2mm none;border-right:0.2mm none;border-top:0.2mm none;border-bottom:0.2mm none;text-indent: 13px;margin-left: 0px;margin-right: 0px;'>\n" +
                        "                <span class='txt'>&nbsp; </span>\n" +
                        "              </div>\n" +
                        "              <div class='paragraph'\n" +
                        "                style='border-left:0.2mm none;border-right:0.2mm none;border-top:0.2mm none;border-bottom:0.2mm none;text-indent: 13px;margin-left: 0px;margin-right: 0px;'>\n" +
                        "                <span class='txt'>그리고</span>\n" +
                        "              </div>\n" +
                        "              <div class='paragraph'\n" +
                        "                style='border-left:0.2mm none;border-right:0.2mm none;border-top:0.2mm none;border-bottom:0.2mm none;text-indent: 13px;margin-left: 0px;margin-right: 0px;'>\n" +
                        "                <span class='txt'>마루에서 졸다가 깬</span>\n" +
                        "              </div>\n" +
                        "              <div class='paragraph'\n" +
                        "                style='border-left:0.2mm none;border-right:0.2mm none;border-top:0.2mm none;border-bottom:0.2mm none;text-indent: 13px;margin-left: 0px;margin-right: 0px;'>\n" +
                        "                <span class='txt'>눈을 하고 앉은</span>\n" +
                        "              </div>\n" +
                        "              <div class='paragraph'\n" +
                        "                style='border-left:0.2mm none;border-right:0.2mm none;border-top:0.2mm none;border-bottom:0.2mm none;text-indent: 13px;margin-left: 0px;margin-right: 0px;'>\n" +
                        "                <span class='txt'>새끼 고양이의 눈 속에도</span>\n" +
                        "              </div>\n" +
                        "              <div class='paragraph'\n" +
                        "                style='border-left:0.2mm none;border-right:0.2mm none;border-top:0.2mm none;border-bottom:0.2mm none;text-indent: 13px;margin-left: 0px;margin-right: 0px;'>\n" +
                        "                <span class='txt'>내리는 봄눈</span>\n" +
                        "              </div>\n" +
                        "              <div class='paragraph'\n" +
                        "                style='border-left:0.2mm none;border-right:0.2mm none;border-top:0.2mm none;border-bottom:0.2mm none;text-indent: 13px;margin-left: 0px;margin-right: 0px;'>\n" +
                        "                <span class='txt'>&nbsp; </span>\n" +
                        "              </div>\n" +
                        "              <div class='paragraph'\n" +
                        "                style='border-left:0.2mm none;border-right:0.2mm none;border-top:0.2mm none;border-bottom:0.2mm none;text-indent: 13px;margin-left: 0px;margin-right: 0px;'>\n" +
                        "                <span class='txt'>감았다 떴다 하는</span>\n" +
                        "              </div>\n" +
                        "              <div class='paragraph'\n" +
                        "                style='border-left:0.2mm none;border-right:0.2mm none;border-top:0.2mm none;border-bottom:0.2mm none;text-indent: 13px;margin-left: 0px;margin-right: 0px;'>\n" +
                        "                <span class='txt'>㉡</span><span class='txt' style='text-decoration : underline;'>새끼 고양이의 눈처럼</span>\n" +
                        "              </div>\n" +
                        "              <div class='paragraph'\n" +
                        "                style='border-left:0.2mm none;border-right:0.2mm none;border-top:0.2mm none;border-bottom:0.2mm none;text-indent: 13px;margin-left: 0px;margin-right: 0px;'>\n" +
                        "                <span class='txt'>보드라운</span>\n" +
                        "              </div>\n" +
                        "              <div class='paragraph'\n" +
                        "                style='border-left:0.2mm none;border-right:0.2mm none;border-top:0.2mm none;border-bottom:0.2mm none;text-indent: 13px;margin-left: 0px;margin-right: 0px;'>\n" +
                        "                <span class='txt'>봄</span>\n" +
                        "              </div>\n" +
                        "              <div class='paragraph'\n" +
                        "                style='border-left:0.2mm none;border-right:0.2mm none;border-top:0.2mm none;border-bottom:0.2mm none;text-indent: 13px;margin-left: 0px;margin-right: 0px;'>\n" +
                        "                <span class='txt'>봄 하늘</span>\n" +
                        "              </div>\n" +
                        "              <div class='paragraph'\n" +
                        "                style='border-left:0.2mm none;border-right:0.2mm none;border-top:0.2mm none;border-bottom:0.2mm none;text-indent: 13px;margin-left: 0px;margin-right: 0px;'>\n" +
                        "                <span class='txt'>봄 하늘의 봄눈</span>\n" +
                        "              </div>\n" +
                        "            </td>\n" +
                        "          </tr>\n" +
                        "        </tbody>\n" +
                        "      </table>\n" +
                        "    </span>\n" +
                        "  </div>\n" +
                        "</body>\n" +
                        "\n" +
                        "</html>";
                return_html += "<html> <head></head> <body>  <div class='paragraph' style='border-left:0.2mm none;border-right:0.2mm none;border-top:0.2mm none;border-bottom:0.2mm none;text-indent: 0px;margin-left: 0px;margin-right: 0px;'><span class='txt'>이 시에 대한 감상으로 알맞지 </span><span class='txt' style='text-decoration : underline;'>않은</span><span class='txt'> 것은?</span>  </div> </body></html>";
                break;
            case "textQuestion":
                return_html = "<html> <head></head> <body>  <div class='paragraph' style='border-left:0.2mm none;border-right:0.2mm none;border-top:0.2mm none;border-bottom:0.2mm none;text-indent: 0px;margin-left: 0px;margin-right: 0px;'><span class='txt'>이 시에 대한 감상으로 알맞지 </span><span class='txt' style='text-decoration : underline;'>않은</span><span class='txt'> 것은?</span>  </div> </body></html>";
                break;
        }

        return return_html;
    }
}
