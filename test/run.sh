#!/usr/bin/env bash

#
# take countries-app-sample from Maven Central and Start Web Services (REST)
wget -O countries-app-sample-0.0.1.jar 'https://oss.sonatype.org/service/local/artifact/maven/redirect?r=snapshots&g=com.github.noraui&a=countries-app-sample&v=0.0.1-SNAPSHOT&p=jar'

java -jar countries-app-sample-0.0.1.jar &
PID=$!
sleep 30


cd $(dirname $0)
cd ..
mkdir generate_app
cd generate_app
echo "************************************************"
echo "*                                              *"
echo "*    generate a robot from noraui-archetype    *"
echo "*                                              *"
echo "************************************************"
mvn archetype:generate -DarchetypeGroupId=com.github.noraui -DarchetypeArtifactId=noraui-archetype -DarchetypeVersion=3.0.0-SNAPSHOT -DgroupId=com.your.company -DartifactId=robot -Dversion=0.0.1-SNAPSHOT -DinteractiveMode=false

pwd
ls -l
cd robot
echo "**********************************************************"
echo "*                                                        *"
echo "*    run and test robot generated by noraui-archetype    *"
echo "*                                                        *"
echo "**********************************************************"
mvn clean test javadoc:javadoc -Dcucumber.options="--tags '@LoginLogout'" -Pjavadoc,preIC,scenarioInitiator,ci,unit-tests,postIC -Dmaven.test.failure.ignore=true

curl -s "https://api.travis-ci.org/jobs/${TRAVIS_JOB_ID}/log.txt?deansi=true" > nonaui.log

echo "***************************************************"

counters1=$(sed -n 's:.*<EXPECTED_RESULTS_1>\(.*\)</EXPECTED_RESULTS_1>.*:\1:p' nonaui.log | head -n 1)
echo "******** $counters1"
nb_counters1=$(sed -n ":;s/$counters1//p;t" nonaui.log | sed -n '$=')
echo "********" found $nb_counters1 times

counters2=$(sed -n 's:.*<EXPECTED_RESULTS_2>\(.*\)</EXPECTED_RESULTS_2>.*:\1:p' nonaui.log | head -n 1)
echo "******** $counters2"
nb_counters2=$(sed -n ":;s/$counters2//p;t" nonaui.log | sed -n '$=')
echo "******** found $nb_counters2 times"

echo "***************************************************"

# check if BUILD FAILURE finded in logs
nb_failure=$(sed -n ":;s/BUILD FAILURE//p;t" nonaui.log | sed -n '$=')
if [ "$nb_failure" != "" ]; then
    echo "******** BUILD FAILURE find $nb_failure time in build"
    exit 255
fi

# 2 = 1 (real) + 1 counter (Excel)
if [ "$nb_counters1" == "2" ]; then
    echo "******** All counter is SUCCESS"
else
    echo "******** All counter is FAIL"
    exit 255
fi
if [ "$nb_counters2" == "2" ]; then
    echo "******** All counter is SUCCESS"
else
    echo "******** All counter is FAIL"
    exit 255
fi

#
# kill countries-app-sample
kill -9 $PID
echo "******** countries-app-sample STOPED"

exit 0
