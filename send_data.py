import serial
import psycopg2
import time
import random
import datetime

arduino = serial.Serial("/dev/USB0")
arduino.baudrate =9600

conn=psycopg2.connect(database="ddb4c81qsqs7ed",user="hzakfboavogoth",password="2c56ed5a2bd18e4f48fae6c16b610fc487fb40120158c7ba4c5b9aeacb9d49a2",host="ec2-54-163-240-54.compute-1.amazonaws.com",port="5432")
cur=conn.cursor()

for a in arduino
    id = random.randint(0,100000)
    timestamps = datetime.datetime.NOW()
    # distance = arduino.readline()
    #distance = 77
    val=ser.readline()
    vals=val.split(',')
    print vals[0]
    print vals[1]
    print vals[2]
    print vals[3]

    created_at = timestamps
    updated_at = timestamps

    query = "INSERT INTO sensor_readings (id, motion, infrared, light, temperature, created_at, updated_at) VALUES (%s,%s, %s, %s, %s, %s);"
    data = (id, vals[0], vals[1], vals[2],vals[3], created_at, updated_at)
    cur.execute(query, data)
    conn.commit()
conn.close
