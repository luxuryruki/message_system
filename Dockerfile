
# Amazon Corretto 17 (aarch64) 이미지 사용
FROM amazoncorretto:17-aarch64

# 작업 디렉토리 설정
WORKDIR /app

# JAR 파일을 컨테이너 내부로 복사
COPY build/libs/*.jar app.jar

# Java 애플리케이션 실행
ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom", "-jar", "/app.jar"]

