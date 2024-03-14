package com.sherpa.exambank.step2.service;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.google.gson.JsonObject;
import com.sherpa.exambank.step2.domain.ItemDTO;
import com.sherpa.exambank.step2.mapper.StepTwoMapper;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.Arrays;
import java.util.List;

@Service
@RequiredArgsConstructor
@Slf4j
public class StepTwoService {

    private final StepTwoMapper stepTwoMapper;

    public List postResponse() throws JsonProcessingException {
        String jsonData = "[" +
                "  {" +
                "    \"itemNo\": 1," +
                "    \"itemId\": 494552," +
                "    \"questionFormCode\": \"50\"," +
                "    \"questionFormName\": \"5지 선택\"," +
                "    \"difficultyCode\": \"02\"," +
                "    \"difficultyName\": \"하\"," +
                "    \"largeChapterId\": 115401," +
                "    \"largeChapterName\": \"1. 새로운 시작\"," +
                "    \"mediumChapterId\": 11540101," +
                "    \"mediumChapterName\": \"(1) 시의 아름다움\"," +
                "    \"smallChapterId\": 1154010102," +
                "    \"smallChapterName\": \"새로운 길\"," +
                "    \"topicChapterId\": 115401010201," +
                "    \"topicChapterName\": \"작품의 특징\"," +
                "    \"passageId\": 24316," +
                "    \"passageUrl\": \"https://img.chunjae-platform.com/upload/capture/tsherpa/passage/24316/24316_2024-03-13.svg\"," +
                "    \"questionUrl\": \"https://img.chunjae-platform.com/upload/capture/tsherpa/question/494552/494552_2023-10-13.svg\"," +
                "    \"answerUrl\": \"https://img.chunjae-platform.com/upload/capture/tsherpa/answer/494552/494552_2023-10-13.svg\"," +
                "    \"explainUrl\": \"https://img.chunjae-platform.com/upload/capture/tsherpa/explain/494552/494552_2023-10-13.svg\"" +
                "  }," +
                "  {" +
                "    \"itemNo\": 2," +
                "    \"itemId\": 494553," +
                "    \"questionFormCode\": \"50\"," +
                "    \"questionFormName\": \"5지 선택\"," +
                "    \"difficultyCode\": \"04\"," +
                "    \"difficultyName\": \"상\"," +
                "    \"largeChapterId\": 115401," +
                "    \"largeChapterName\": \"1. 새로운 시작\"," +
                "    \"mediumChapterId\": 11540101," +
                "    \"mediumChapterName\": \"(1) 시의 아름다움\"," +
                "    \"smallChapterId\": 1154010102," +
                "    \"smallChapterName\": \"새로운 길\"," +
                "    \"topicChapterId\": 115401010201," +
                "    \"topicChapterName\": \"작품의 특징\"," +
                "    \"passageId\": 24316," +
                "    \"passageUrl\": \"https://img.chunjae-platform.com/upload/capture/tsherpa/passage/24316/24316_2024-03-13.svg\"," +
                "    \"questionUrl\": \"https://img.chunjae-platform.com/upload/capture/tsherpa/question/494553/494553_2024-03-13.svg\"," +
                "    \"answerUrl\": \"https://img.chunjae-platform.com/upload/capture/tsherpa/answer/494553/494553_2024-03-13.svg\"," +
                "    \"explainUrl\": \"https://img.chunjae-platform.com/upload/capture/tsherpa/explain/494553/494553_2024-03-13.svg\"" +
                "  }," +
                "  {" +
                "    \"itemNo\": 3," +
                "    \"itemId\": 494519," +
                "    \"questionFormCode\": \"50\"," +
                "    \"questionFormName\": \"5지 선택\"," +
                "    \"difficultyCode\": \"02\"," +
                "    \"difficultyName\": \"하\"," +
                "    \"largeChapterId\": 115401," +
                "    \"largeChapterName\": \"1. 새로운 시작\"," +
                "    \"mediumChapterId\": 11540101," +
                "    \"mediumChapterName\": \"(1) 시의 아름다움\"," +
                "    \"smallChapterId\": 1154010101," +
                "    \"smallChapterName\": \"포근한 봄\"," +
                "    \"topicChapterId\": 115401010101," +
                "    \"topicChapterName\": \"작품의 특징\"," +
                "    \"passageId\": 24310," +
                "    \"passageUrl\": \"https://img.chunjae-platform.com/upload/capture/tsherpa/passage/24310/24310_2024-03-13.svg\"," +
                "    \"questionUrl\": \"https://img.chunjae-platform.com/upload/capture/tsherpa/question/494519/494519_2023-10-13.svg\"," +
                "    \"answerUrl\": \"https://img.chunjae-platform.com/upload/capture/tsherpa/answer/494519/494519_2023-10-13.svg\"," +
                "    \"explainUrl\": \"https://img.chunjae-platform.com/upload/capture/tsherpa/explain/494519/494519_2023-10-13.svg\"" +
                "  }," +
                "  {" +
                "    \"itemNo\": 4," +
                "    \"itemId\": 493138," +
                "    \"questionFormCode\": \"50\"," +
                "    \"questionFormName\": \"5지 선택\"," +
                "    \"difficultyCode\": \"02\"," +
                "    \"difficultyName\": \"하\"," +
                "    \"largeChapterId\": 115401," +
                "    \"largeChapterName\": \"1. 새로운 시작\"," +
                "    \"mediumChapterId\": 11540104," +
                "    \"mediumChapterName\": \"선택 학습 2\"," +
                "    \"smallChapterId\": 1154010401," +
                "    \"smallChapterName\": \"사막을 같이 가는 벗\"," +
                "    \"topicChapterId\": 115401040108," +
                "    \"topicChapterName\": \"작품의 내용\"," +
                "    \"passageId\": 24116," +
                "    \"passageUrl\": \"https://img.chunjae-platform.com/upload/capture/tsherpa/passage/24116/24116_2024-03-13.svg\"," +
                "    \"questionUrl\": \"https://img.chunjae-platform.com/upload/capture/tsherpa/question/493138/493138_2023-10-12.svg\"," +
                "    \"answerUrl\": \"https://img.chunjae-platform.com/upload/capture/tsherpa/answer/493138/493138_2023-10-12.svg\"," +
                "    \"explainUrl\": \"https://img.chunjae-platform.com/upload/capture/tsherpa/explain/493138/493138_2023-10-12.svg\"" +
                "  }," +
                "  {" +
                "    \"itemNo\": 5," +
                "    \"itemId\": 493140," +
                "    \"questionFormCode\": \"50\"," +
                "    \"questionFormName\": \"5지 선택\"," +
                "    \"difficultyCode\": \"02\"," +
                "    \"difficultyName\": \"하\"," +
                "    \"largeChapterId\": 115401," +
                "    \"largeChapterName\": \"1. 새로운 시작\"," +
                "    \"mediumChapterId\": 11540104," +
                "    \"mediumChapterName\": \"선택 학습 2\"," +
                "    \"smallChapterId\": 1154010401," +
                "    \"smallChapterName\": \"사막을 같이 가는 벗\"," +
                "    \"topicChapterId\": 115401040105," +
                "    \"topicChapterName\": \"어휘의 의미\"," +
                "    \"passageId\": 24116," +
                "    \"passageUrl\": \"https://img.chunjae-platform.com/upload/capture/tsherpa/passage/24116/24116_2024-03-13.svg\"," +
                "    \"questionUrl\": \"https://img.chunjae-platform.com/upload/capture/tsherpa/question/493140/493140_2023-10-12.svg\"," +
                "    \"answerUrl\": \"https://img.chunjae-platform.com/upload/capture/tsherpa/answer/493140/493140_2023-10-12.svg\"," +
                "    \"explainUrl\": \"https://img.chunjae-platform.com/upload/capture/tsherpa/explain/493140/493140_2023-10-12.svg\"" +
                "  }," +
                "  {" +
                "    \"itemNo\": 6," +
                "    \"itemId\": 493137," +
                "    \"questionFormCode\": \"50\"," +
                "    \"questionFormName\": \"5지 선택\"," +
                "    \"difficultyCode\": \"03\"," +
                "    \"difficultyName\": \"중\"," +
                "    \"largeChapterId\": 115401," +
                "    \"largeChapterName\": \"1. 새로운 시작\"," +
                "    \"mediumChapterId\": 11540104," +
                "    \"mediumChapterName\": \"선택 학습 2\"," +
                "    \"smallChapterId\": 1154010401," +
                "    \"smallChapterName\": \"사막을 같이 가는 벗\"," +
                "    \"topicChapterId\": 115401040101," +
                "    \"topicChapterName\": \"작품의 특징\"," +
                "    \"passageId\": 24116," +
                "    \"passageUrl\": \"https://img.chunjae-platform.com/upload/capture/tsherpa/passage/24116/24116_2024-03-13.svg\"," +
                "    \"questionUrl\": \"https://img.chunjae-platform.com/upload/capture/tsherpa/question/493137/493137_2023-10-12.svg\"," +
                "    \"answerUrl\": \"https://img.chunjae-platform.com/upload/capture/tsherpa/answer/493137/493137_2023-10-12.svg\"," +
                "    \"explainUrl\": \"https://img.chunjae-platform.com/upload/capture/tsherpa/explain/493137/493137_2023-10-12.svg\"" +
                "  }," +
                "  {" +
                "    \"itemNo\": 7," +
                "    \"itemId\": 493122," +
                "    \"questionFormCode\": \"50\"," +
                "    \"questionFormName\": \"5지 선택\"," +
                "    \"difficultyCode\": \"03\"," +
                "    \"difficultyName\": \"중\"," +
                "    \"largeChapterId\": 115401," +
                "    \"largeChapterName\": \"1. 새로운 시작\"," +
                "    \"mediumChapterId\": 11540103," +
                "    \"mediumChapterName\": \"선택 학습 1\"," +
                "    \"smallChapterId\": 1154010301," +
                "    \"smallChapterName\": \"버터플라이\"," +
                "    \"topicChapterId\": 115401030108," +
                "    \"topicChapterName\": \"작품의 내용\"," +
                "    \"passageId\": 24113," +
                "    \"passageUrl\": \"https://img.chunjae-platform.com/upload/capture/tsherpa/passage/24113/24113_2024-03-13.svg\"," +
                "    \"questionUrl\": \"https://img.chunjae-platform.com/upload/capture/tsherpa/question/493122/493122_2023-10-12.svg\"," +
                "    \"answerUrl\": \"https://img.chunjae-platform.com/upload/capture/tsherpa/answer/493122/493122_2023-10-12.svg\"," +
                "    \"explainUrl\": \"https://img.chunjae-platform.com/upload/capture/tsherpa/explain/493122/493122_2023-10-12.svg\"" +
                "  }," +
                "  {" +
                "    \"itemNo\": 8," +
                "    \"itemId\": 494544," +
                "    \"questionFormCode\": \"50\"," +
                "    \"questionFormName\": \"5지 선택\"," +
                "    \"difficultyCode\": \"03\"," +
                "    \"difficultyName\": \"중\"," +
                "    \"largeChapterId\": 115401," +
                "    \"largeChapterName\": \"1. 새로운 시작\"," +
                "    \"mediumChapterId\": 11540101," +
                "    \"mediumChapterName\": \"(1) 시의 아름다움\"," +
                "    \"smallChapterId\": 1154010101," +
                "    \"smallChapterName\": \"포근한 봄\"," +
                "    \"topicChapterId\": 115401010101," +
                "    \"topicChapterName\": \"작품의 특징\"," +
                "    \"passageId\": 24315," +
                "    \"passageUrl\": \"https://img.chunjae-platform.com/upload/capture/tsherpa/passage/24315/24315_2024-03-13.svg\"," +
                "    \"questionUrl\": \"https://img.chunjae-platform.com/upload/capture/tsherpa/question/494544/494544_2023-10-13.svg\"," +
                "    \"answerUrl\": \"https://img.chunjae-platform.com/upload/capture/tsherpa/answer/494544/494544_2023-10-13.svg\"," +
                "    \"explainUrl\": \"https://img.chunjae-platform.com/upload/capture/tsherpa/explain/494544/494544_2023-10-13.svg\"" +
                "  }," +
                "  {" +
                "    \"itemNo\": 9," +
                "    \"itemId\": 494581," +
                "    \"questionFormCode\": \"50\"," +
                "    \"questionFormName\": \"5지 선택\"," +
                "    \"difficultyCode\": \"03\"," +
                "    \"difficultyName\": \"중\"," +
                "    \"largeChapterId\": 115401," +
                "    \"largeChapterName\": \"1. 새로운 시작\"," +
                "    \"mediumChapterId\": 11540101," +
                "    \"mediumChapterName\": \"(1) 시의 아름다움\"," +
                "    \"smallChapterId\": 1154010101," +
                "    \"smallChapterName\": \"포근한 봄\"," +
                "    \"topicChapterId\": 115401010101," +
                "    \"topicChapterName\": \"작품의 특징\"," +
                "    \"passageId\": 24322," +
                "    \"passageUrl\": \"https://img.chunjae-platform.com/upload/capture/tsherpa/passage/24322/24322_2024-03-13.svg\"," +
                "    \"questionUrl\": \"https://img.chunjae-platform.com/upload/capture/tsherpa/question/494581/494581_2024-03-13.svg\"," +
                "    \"answerUrl\": \"https://img.chunjae-platform.com/upload/capture/tsherpa/answer/494581/494581_2024-03-13.svg\"," +
                "    \"explainUrl\": \"https://img.chunjae-platform.com/upload/capture/tsherpa/explain/494581/494581_2024-03-13.svg\"" +
                "  }," +
                "  {" +
                "    \"itemNo\": 10," +
                "    \"itemId\": 494582," +
                "    \"questionFormCode\": \"50\"," +
                "    \"questionFormName\": \"5지 선택\"," +
                "    \"difficultyCode\": \"03\"," +
                "    \"difficultyName\": \"중\"," +
                "    \"largeChapterId\": 115401," +
                "    \"largeChapterName\": \"1. 새로운 시작\"," +
                "    \"mediumChapterId\": 11540101," +
                "    \"mediumChapterName\": \"(1) 시의 아름다움\"," +
                "    \"smallChapterId\": 1154010101," +
                "    \"smallChapterName\": \"포근한 봄\"," +
                "    \"topicChapterId\": 115401010101," +
                "    \"topicChapterName\": \"작품의 특징\"," +
                "    \"passageId\": 24322," +
                "    \"passageUrl\": \"https://img.chunjae-platform.com/upload/capture/tsherpa/passage/24322/24322_2024-03-13.svg\"," +
                "    \"questionUrl\": \"https://img.chunjae-platform.com/upload/capture/tsherpa/question/494582/494582_2023-10-13.svg\"," +
                "    \"answerUrl\": \"https://img.chunjae-platform.com/upload/capture/tsherpa/answer/494582/494582_2023-10-13.svg\"," +
                "    \"explainUrl\": \"https://img.chunjae-platform.com/upload/capture/tsherpa/explain/494582/494582_2023-10-13.svg\"" +
                "  }," +
                "  {" +
                "    \"itemNo\": 11," +
                "    \"itemId\": 487792," +
                "    \"questionFormCode\": \"50\"," +
                "    \"questionFormName\": \"5지 선택\"," +
                "    \"difficultyCode\": \"03\"," +
                "    \"difficultyName\": \"중\"," +
                "    \"largeChapterId\": 115401," +
                "    \"largeChapterName\": \"1. 새로운 시작\"," +
                "    \"mediumChapterId\": 11540101," +
                "    \"mediumChapterName\": \"(1) 시의 아름다움\"," +
                "    \"smallChapterId\": 1154010101," +
                "    \"smallChapterName\": \"포근한 봄\"," +
                "    \"topicChapterId\": 115401010101," +
                "    \"topicChapterName\": \"작품의 특징\"," +
                "    \"passageId\": 23370," +
                "    \"passageUrl\": \"https://img.chunjae-platform.com/upload/capture/tsherpa/passage/23370/23370_2024-03-13.svg\"," +
                "    \"questionUrl\": \"https://img.chunjae-platform.com/upload/capture/tsherpa/question/487792/487792_2024-03-13.svg\"," +
                "    \"answerUrl\": \"https://img.chunjae-platform.com/upload/capture/tsherpa/answer/487792/487792_2024-03-13.svg\"," +
                "    \"explainUrl\": \"https://img.chunjae-platform.com/upload/capture/tsherpa/explain/487792/487792_2024-03-13.svg\"" +
                "  }," +
                "  {" +
                "    \"itemNo\": 12," +
                "    \"itemId\": 493113," +
                "    \"questionFormCode\": \"50\"," +
                "    \"questionFormName\": \"5지 선택\"," +
                "    \"difficultyCode\": \"03\"," +
                "    \"difficultyName\": \"중\"," +
                "    \"largeChapterId\": 115401," +
                "    \"largeChapterName\": \"1. 새로운 시작\"," +
                "    \"mediumChapterId\": 11540101," +
                "    \"mediumChapterName\": \"(1) 시의 아름다움\"," +
                "    \"smallChapterId\": 1154010101," +
                "    \"smallChapterName\": \"포근한 봄\"," +
                "    \"topicChapterId\": 115401010101," +
                "    \"topicChapterName\": \"작품의 특징\"," +
                "    \"passageId\": 24112," +
                "    \"passageUrl\": \"https://img.chunjae-platform.com/upload/capture/tsherpa/passage/24112/24112_2024-03-13.svg\"," +
                "    \"questionUrl\": \"https://img.chunjae-platform.com/upload/capture/tsherpa/question/493113/493113_2024-03-13.svg\"," +
                "    \"answerUrl\": \"https://img.chunjae-platform.com/upload/capture/tsherpa/answer/493113/493113_2024-03-13.svg\"," +
                "    \"explainUrl\": \"https://img.chunjae-platform.com/upload/capture/tsherpa/explain/493113/493113_2024-03-13.svg\"" +
                "  }," +
                "  {" +
                "    \"itemNo\": 13," +
                "    \"itemId\": 487816," +
                "    \"questionFormCode\": \"50\"," +
                "    \"questionFormName\": \"5지 선택\"," +
                "    \"difficultyCode\": \"04\"," +
                "    \"difficultyName\": \"상\"," +
                "    \"largeChapterId\": 115401," +
                "    \"largeChapterName\": \"1. 새로운 시작\"," +
                "    \"mediumChapterId\": 11540101," +
                "    \"mediumChapterName\": \"(1) 시의 아름다움\"," +
                "    \"smallChapterId\": 1154010101," +
                "    \"smallChapterName\": \"포근한 봄\"," +
                "    \"topicChapterId\": 115401010101," +
                "    \"topicChapterName\": \"작품의 특징\"," +
                "    \"passageId\": 23374," +
                "    \"passageUrl\": \"https://img.chunjae-platform.com/upload/capture/tsherpa/passage/23374/23374_2024-03-13.svg\"," +
                "    \"questionUrl\": \"https://img.chunjae-platform.com/upload/capture/tsherpa/question/487816/487816_2023-10-11.svg\"," +
                "    \"answerUrl\": \"https://img.chunjae-platform.com/upload/capture/tsherpa/answer/487816/487816_2023-10-11.svg\"," +
                "    \"explainUrl\": \"https://img.chunjae-platform.com/upload/capture/tsherpa/explain/487816/487816_2023-10-11.svg\"" +
                "  }," +
                "  {" +
                "    \"itemNo\": 14," +
                "    \"itemId\": 494528," +
                "    \"questionFormCode\": \"50\"," +
                "    \"questionFormName\": \"5지 선택\"," +
                "    \"difficultyCode\": \"04\"," +
                "    \"difficultyName\": \"상\"," +
                "    \"largeChapterId\": 115401," +
                "    \"largeChapterName\": \"1. 새로운 시작\"," +
                "    \"mediumChapterId\": 11540101," +
                "    \"mediumChapterName\": \"(1) 시의 아름다움\"," +
                "    \"smallChapterId\": 1154010101," +
                "    \"smallChapterName\": \"포근한 봄\"," +
                "    \"topicChapterId\": 115401010101," +
                "    \"topicChapterName\": \"작품의 특징\"," +
                "    \"passageId\": 24311," +
                "    \"passageUrl\": \"https://img.chunjae-platform.com/upload/capture/tsherpa/passage/24311/24311_2024-03-13.svg\"," +
                "    \"questionUrl\": \"https://img.chunjae-platform.com/upload/capture/tsherpa/question/494528/494528_2023-10-13.svg\"," +
                "    \"answerUrl\": \"https://img.chunjae-platform.com/upload/capture/tsherpa/answer/494528/494528_2023-10-13.svg\"," +
                "    \"explainUrl\": \"https://img.chunjae-platform.com/upload/capture/tsherpa/explain/494528/494528_2023-10-13.svg\"" +
                "  }" +
                "]";

        ObjectMapper objectMapper = new ObjectMapper();
        ItemDTO[] itemDTOArray = objectMapper.readValue(jsonData, ItemDTO[].class);
        return Arrays.asList(itemDTOArray);
    }
}
