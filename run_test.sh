#!/usr/bin/zsh

./gradlew :createFatJar

jamvm -version
jamvm -cp build/libs/jfreechart.jar org.junit.runner.JUnitCore org.jfree.$1