FROM ccr.ccs.tencentyun.com/wufan/java8-shanghai
RUN mkdir -p /usr/business
ADD build/libs/tencent-test-0.0.1.jar /usr/business/test.jar
WORKDIR /usr/business
EXPOSE 8080
CMD ["java", "-jar", "test.jar"]