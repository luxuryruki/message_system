
# Amazon Corretto 17 (aarch64) 이미지 사용
FROM amazoncorretto:17

# 작업 디렉토리 설정
WORKDIR /app

COPY build/libs/messagesystem-0.0.1-SNAPSHOT.jar app.jar

# Java 애플리케이션 실행
ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom", "-jar", "/app/app.jar"]

