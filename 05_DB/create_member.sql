-- 1. 기존 테이블 삭제
DROP TABLE IF EXISTS `MEMBER`;

-- 2. 테이블 생성 및 기본키 지정
CREATE TABLE `MEMBER` (
    `member_no`     INT          NOT NULL COMMENT '회원번호',
    `member_email`  VARCHAR(50)  NOT NULL COMMENT '회원이메일(아이디)',
    `member_pw`     VARCHAR(30)  NOT NULL COMMENT '회원비밀번호',
    `member_nick`   VARCHAR(30)  NOT NULL COMMENT '회원 닉네임',
    `member_tel`    CHAR(11)     NULL     COMMENT '전화번호("-" 제외)',
    `member_adde`   VARCHAR(500) NULL     COMMENT '회원주소',
    `enroll_dmembert`     DATETIME     NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '회원가입일',
    `secession_fi`  CHAR(1)      NOT NULL DEFAULT 'N' COMMENT '탈퇴여부(Y:탈퇴, N:미탈퇴)',
    
    CONSTRAINT `PK_MEMBER` PRIMARY KEY (`member_no`)
);