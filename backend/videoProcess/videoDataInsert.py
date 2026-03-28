import mysql.connector
import conection as cn


def insertData(camerainfo,data):
    cn.conection.connect

    cursor = cn.conection.cursor()
    

    query = """INSERT INTO view (
            camera_id,
            amount_car,
            amount_truck,
            amount_bus,
            amount_motorbike,
            amount_bike,
            amount_people,
            start,
            end,
            avg_speed) 
            VALUES (%s,%s,%s,%s,%s,%s,%s,%s,%s,%s)"""
    
    dataIn = (
        camerainfo[0],
        data.get("obj_in")["car"],
        data.get("obj_in")["truck"],
        data.get("obj_in")["bus"],
        data.get("obj_in")["motorbicycle"],
        data.get("obj_in")["bicycle"],
        data.get("obj_in")["person"],
        camerainfo[1],
        camerainfo[2],
        0,
    )
    print(camerainfo[1],camerainfo[2])
    cursor.execute(query,dataIn)
    cn.conection.commit()
    print("data inserted correctly")
    
