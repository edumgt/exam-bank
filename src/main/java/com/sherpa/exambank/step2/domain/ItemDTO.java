package com.sherpa.exambank.step2.domain;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.SuperBuilder;

@Data
@SuperBuilder
@NoArgsConstructor
@AllArgsConstructor
public class ItemDTO {
    protected int itemNo;
    protected Long itemId;
    protected String questionFormCode;
    protected String questionFormName;
    protected String difficultyCode;
    protected String difficultyName;
    protected Long largeChapterId;
    protected String largeChapterName;
    protected Long mediumChapterId;
    protected String mediumChapterName;
    protected Long smallChapterId;
    protected String smallChapterName;
    protected Long topicChapterId;
    protected String topicChapterName;
    protected Long passageId;
    protected String passageUrl;
    protected String questionUrl;
    protected String answerUrl;
    protected String explainUrl;
    protected String passageYn;
}
