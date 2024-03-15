use KDT_JAVA;

-- Drop table if exists `tb_exam_file`;
-- Drop table if exists `tb_item_error`;
-- Drop table if exists `tb_exam_item`;
-- Drop table if exists `tb_item`;
-- Drop table if exists `tb_passage`;
-- Drop table if exists `tb_exam`;
-- Drop table if exists `tb_user`;

CREATE TABLE `tb_exam` (
                           `seq`	bigint auto_increment primary key	NOT NULL	COMMENT '시험지 sequence number',
                           `user_seq`	bigint	NOT NULL	COMMENT '회원 sequence number',
                           `name`	varchar(200)	NOT NULL	COMMENT '시험지 명',
                           `subject_name`	varchar(30)	NULL,
                           `item_cnt`	int	NULL	DEFAULT 0	COMMENT '시험지 내 문제 수',
                           `reg_date`	timestamp	NULL	DEFAULT now()	COMMENT '시험지 생성 일시',
                           `update_date`	timestamp	NULL	COMMENT '시험지명, 문항 수정일시',
                           `delete_flag`	tinyint	NULL	DEFAULT 0	COMMENT '0:유지, 1:삭제',
                           `setting_subject`	int	NULL	COMMENT '단원 ID+ 순서(코드), 셋팅지가 아닌 경우0'
);

CREATE TABLE `tb_item` (
                           `seq`	bigint auto_increment primary key	NOT NULL	COMMENT '문항 sequence number',
                           `passage_seq`	bigint	NULL	DEFAULT 0	COMMENT '지문 sequence number, 지문이 없는 경우 default 0',
                           `id`	bigint	NOT NULL	COMMENT '문항 고유값',
                           `question_url`	varchar(2083)	NOT NULL	COMMENT '문제 url 주소',
                           `answer_url`	varchar(2083)	NOT NULL	COMMENT '정답 url 주소',
                           `explain_url`	varchar(2083)	NOT NULL	COMMENT '해설 url 주소',
                           `question_form_code`	int	NOT NULL	COMMENT '(10:자유선지형, 50:5지선택 , 60:단답유순형, 85:서술형)',
                           `question_form_name`	varchar(10)	NOT NULL	COMMENT '문제형태명',
                           `difficulty_code`	varchar(5)	NOT NULL	COMMENT '최하,하,중,상,최상(01-05)',
                           `dificulty_name`	VARCHAR(255)	NULL	COMMENT '난이도명',
                           `large_chapter_id`	varchar(20)	NOT NULL,
                           `large_chapter_name`	varchar(50)	NOT NULL,
                           `midium_chapter_id`	varchar(20)	NOT NULL,
                           `midium_chapter_name`	varchar(50)	NOT NULL,
                           `small_chapter_id`	varchar(20)	NOT NULL,
                           `small_chapter_name`	varchar(50)	NOT NULL,
                           `topic_chapter_id`	varchar(20)	NOT NULL,
                           `topic_chapter_name`	varchar(50)	NOT NULL,
                           `evaluation`	varchar(50)	NOT NULL	COMMENT '평가영역 내용',
                           `achievement`	varchar(50)	NOT NULL	COMMENT '성취기준 내용',
                           `subcontent`	varchar(50)	NOT NULL	COMMENT '내용 영역 내용',
                           `competency`	varchar(50)	NOT NULL	COMMENT '교과역량 내용',
                           `delete_flag`	tinyint	NULL	DEFAULT 0	COMMENT '0:유지, 1:삭제'
);

CREATE TABLE `tb_passage` (
                              `seq`	bigint auto_increment primary key	NOT NULL	COMMENT '지문 sequence number',
                              `id`	bigint	NOT NULL	COMMENT '지문 고유 값',
                              `url`	varchar(2083)	NULL	COMMENT '지문 url'
);

CREATE TABLE `tb_exam_item` (
                                `seq`	bigint auto_increment primary key	NOT NULL	COMMENT '시험지문항 sequence number',
                                `exam_seq`	bigint	NOT NULL	COMMENT '시험지 sequence number',
                                `item_seq`	bigint	NOT NULL	COMMENT '문항 sequence number',
                                `order`	int	NOT NULL	COMMENT '시험지 내 문항 순서',
                                `delete_flag`	tinyint	NULL	DEFAULT 0	COMMENT '0:유지, 1:삭제'
);

CREATE TABLE `tb_user` (
                           `seq`	bigint auto_increment primary key	NOT NULL	COMMENT '회원 sequence number',
                           `user_id`	varchar(50)	NOT NULL	COMMENT '로그인계정ID',
                           `password`	varchar(50)	NOT NULL	COMMENT '로그인계정PW',
                           `name`	varchar(50)	NOT NULL	COMMENT '회원 이름'
);

CREATE TABLE `tb_item_error` (
                                 `seq`	bigint auto_increment primary key	NOT NULL	COMMENT '오류 sequence number',
                                 `item_seq`	bigint	NOT NULL	COMMENT '문항 sequence number',
                                 `user_seq`	bigint	NOT NULL	COMMENT '문항 오류 신고한 회원 sequence number',
                                 `report_date`	timestamp	NOT NULL	DEFAULT now()	COMMENT '오류 신고 발생 일시'
);

CREATE TABLE `tb_exam_file` (
                                `seq`	bigint auto_increment primary key	NOT NULL	COMMENT '시험지 sequence number',
                                `exam_seq`	bigint	NOT NULL	COMMENT '시험지 sequence number',
                                `name`	VARCHAR(255)	NULL	COMMENT 'UUID',
                                `type`	VARCHAR(255)	NULL	COMMENT '전체A, 문제Q, 해설+정답E,문항정보표C',
                                `extension`	VARCHAR(255)	NULL,
                                `path`	VARCHAR(255)	NULL	COMMENT '디렉터리(유형)+파일명(uuid)+확장자',
                                `Field`	VARCHAR(255)	NULL
);


ALTER TABLE `tb_exam` ADD CONSTRAINT `FK_tb_user_TO_tb_exam_1` FOREIGN KEY (
                                                                            `user_seq`
    )
    REFERENCES `tb_user` (
                          `seq`
        );

ALTER TABLE `tb_item` ADD CONSTRAINT `FK_tb_passage_TO_tb_item_1` FOREIGN KEY (
                                                                               `passage_seq`
    )
    REFERENCES `tb_passage` (
                             `seq`
        );

ALTER TABLE `tb_exam_item` ADD CONSTRAINT `FK_tb_exam_TO_tb_exam_item_1` FOREIGN KEY (
                                                                                      `exam_seq`
    )
    REFERENCES `tb_exam` (
                          `seq`
        );

ALTER TABLE `tb_exam_item` ADD CONSTRAINT `FK_tb_item_TO_tb_exam_item_1` FOREIGN KEY (
                                                                                      `item_seq`
    )
    REFERENCES `tb_item` (
                          `seq`
        );

ALTER TABLE `tb_item_error` ADD CONSTRAINT `FK_tb_item_TO_tb_item_error_1` FOREIGN KEY (
                                                                                        `item_seq`
    )
    REFERENCES `tb_item` (
                          `seq`
        );

ALTER TABLE `tb_item_error` ADD CONSTRAINT `FK_tb_user_TO_tb_item_error_1` FOREIGN KEY (
                                                                                        `user_seq`
    )
    REFERENCES `tb_user` (
                          `seq`
        );

ALTER TABLE `tb_exam_file` ADD CONSTRAINT `FK_tb_exam_TO_tb_exam_file_1` FOREIGN KEY (
                                                                                      `exam_seq`
    )
    REFERENCES `tb_exam` (
                          `seq`
        );

