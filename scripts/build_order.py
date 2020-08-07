from mysqlconn import mysqlcon
import qrcode
import hashlib

def generate_qr(format_name):
    get_name_hash = hashlib.md5(format_name.encode()).hexdigest()
    img = qrcode.make(get_name_hash)
    img.save(f'food_qr/{format_name}.png')
    return get_name_hash
    
def order_cli_test():
    x = True
    dbcursor = mysqlcon("localhost", "root", "142857", "canteen")
    format_name = f"ORDERNO{int(dbcursor.execute_return_selective('select count(*) from order_history;')[0]) + 1}"
    name_hash = generate_qr(format_name)
    while x==True:
        order = input("Enter Item Code: ")
        order_price = dbcursor.execute_return_selective(f"select price from menu_card where id=\"{order}\";")
        order_qty = int(input("Enter Quantity: "))
        dbcursor.execute_non_return(f"insert into order_history_meta values (\"{name_hash}\", \"{order}\", {order_qty});")
        check = int(input('Are there any more? 1: yes, 0: no?'))
        if check == 0:
            x = False
            dbcursor.execute_non_return(f"insert into order_history values (\"{name_hash}\", \"anantraina\", now(), null, 0);")
    
    print("Your final order: ")
    sum = dbcursor.execute_return(f"select SUM(c.qty*m.price) from order_history_meta c inner join menu_card m using(id) where order_id=\"{name_hash}\";")
    get_order_data = dbcursor.execute_return(f"select m.id, m.price, c.qty from order_history_meta c inner join menu_card m using(id) where order_id=\"{name_hash}\";")
    print([x for x in get_order_data])
    print("Final cost: %d"%int(sum[0][0]))
    
if __name__ == "__main__":
    order_cli_test()