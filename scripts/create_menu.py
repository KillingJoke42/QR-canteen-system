import qrcode
from mysqlconn import mysqlcon
import json
import hashlib

valid_menu_types = ["soups", "sides", 
                    "starters", "main_course", 
                    "roti", "biryani", 
                    "desert", "drinks"]
                    
def load_json(jsonfile):
    json_data = json.load(jsonfile)
    return json_data
    
def generate_qr(format_name):
    get_name_hash = hashlib.md5(format_name.encode()).hexdigest()
    img = qrcode.make(get_name_hash)
    img.save(f'food_qr/{format_name}.png')
    return get_name_hash
    
if __name__ == "__main__":
    menu_card = load_json(open("local_menu_data/menu_card.json"))
    dbcursor = mysqlcon("localhost", "root", "142857", "canteen")
    for menu_type in valid_menu_types:
        for food_item in menu_card[menu_type]:
            get_hash = generate_qr(food_item["dish"])
            dbcursor.execute_non_return(f"insert into menu_card values(\"{get_hash}\", \"{menu_type}\", \"{food_item['dish']}\", {food_item['price']});")
    