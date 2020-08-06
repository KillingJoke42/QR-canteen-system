import numpy as np
import cv2
from detect_qr import draw_bbox
#from mysqlconn import mysqlcon
import hashlib

#sql_con = mysqlcon()

cap = cv2.VideoCapture(1)

ch = input('Press q to begin scanning: ')
if ch == 'q':
    while True:
        ret, frame = cap.read()

        if ret == True:
            gray = cv2.cvtColor(frame, cv2.COLOR_BGR2GRAY)

            # Our operations on the frame come here
            data, img = draw_bbox(gray)

            """
            if len(data) > 0:
                session_man = sql_con.execute_return(f"select * from sessions where hash_user=\"{data}\";")
                if len(session_man) > 0 and session_man[0][-1] == 1:
                    img = cv2.putText(img, f"{session_man[0][1]}: LoggedIn", (10,50), cv2.FONT_HERSHEY_SIMPLEX, 1, (0,0,255), 2, cv2.LINE_AA) 
                elif len(session_man) > 0 and session_man[0][-1] == 0:
                    sql_con.execute_non_return(f"update sessions set status=1, login_time=now() where hash_user=\"{data}\";")
                    img = cv2.putText(img, f"{session_man[0][1]}: Log In Successful!", (10,50), cv2.FONT_HERSHEY_SIMPLEX, 1, (0,0,255), 2, cv2.LINE_AA)
                else:
                    img = cv2.putText(img, "Invalid QR user data", (10,50), cv2.FONT_HERSHEY_SIMPLEX, 1, (0,0,255), 2, cv2.LINE_AA)
            """
            cv2.imshow('qrattendance', img)

            if cv2.waitKey(1) & 0xFF == ord('q'):
                cv2.destroyAllWindows()
                break
        else:
            break

cap.release()
cv2.destroyAllWindows()