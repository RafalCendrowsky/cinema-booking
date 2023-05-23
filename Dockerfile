FROM gradle:jdk17-alpine AS builder

COPY --chown=gradle:gradle . /home/gradle/src

WORKDIR /home/gradle/src

RUN gradle build --no-daemon



FROM openjdk:17-jdk-alpine

COPY --from=builder /home/gradle/src/build/libs/*.jar cinema-booking.jar

ENTRYPOINT ["java","-jar","/cinema-booking.jar"]