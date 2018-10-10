FROM ccr.ccs.tencentyun.com/wufan/java8-shanghai
RUN mkdir -p /usr/business
ADD mine-api.jar /usr/business/mine-api.jar
WORKDIR /usr/business
EXPOSE 8080
CMD ["java", "-jar", "mine-api.jar", "--spring.profiles.active=dev"]