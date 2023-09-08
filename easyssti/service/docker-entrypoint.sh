#!/bin/sh

# Get the user
user=$(ls /home)

# Check the environment variables for the flag and assign to INSERT_FLAG
if [ "$DASFLAG" ]; then
    INSERT_FLAG="$DASFLAG"
    export DASFLAG=no_FLAG
    DASFLAG=no_FLAG
elif [ "$FLAG" ]; then
    INSERT_FLAG="$FLAG"
    export FLAG=no_FLAG
    FLAG=no_FLAG
elif [ "$GZCTF_FLAG" ]; then
    INSERT_FLAG="$GZCTF_FLAG"
    export GZCTF_FLAG=no_FLAG
    GZCTF_FLAG=no_FLAG
else
    FAKE_FLAG="fake_flag{real_flag_in_tmp}"
    INSERT_FLAG="Aurora{SsTi_is_DANger0us!}"
fi

# 将FLAG写入文件 请根据需要修改
echo $FAKE_FLAG | tee /flag
echo $INSERT_FLAG | tee /tmp/flaaaagggg

# 控制flag和项目源码的权限
chmod 744 /flag
chmod 744 /tmp/flaaaagggg
chmod 740 /app/*

# 启动flask，并同时开启debug模式
# cd /app && flask --debug run -h 0.0.0.0 -p 8080

# 在无debug参数下启动flask
cd /app && flask run -h 0.0.0.0 -p 8080
