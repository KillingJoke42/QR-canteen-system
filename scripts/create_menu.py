from mysqlconn import mysqlcon
import json

valid_menu_types = ["soups", "sides", 
                    "starters", "main_course", 
                    "roti", "biryani", 
                    "desert", "drinks"]
                    
def load_json(jsonfile):
    json_data = json.load(jsonfile)
    return json_data
    
if __name__ == "__main__":
    menu_card = load_json(open("local_menu_data/menu_card.json"))
    dbcursor = mysqlcon("localhost", "root", "142857", "canteen")
    item_count = 0
    for menu_type in valid_menu_types:
        for food_item in menu_card[menu_type]:
            item_count += 1
            get_id = "I%03d"%item_count
            dbcursor.execute_non_return(f"insert into menu_card values(\"{get_id}\", \"{menu_type}\", \"{food_item['dish']}\", {food_item['price']});")
    