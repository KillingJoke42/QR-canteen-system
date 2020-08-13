from PyQt5.QtWidgets import QApplication, QWidget, QPushButton, QVBoxLayout, QComboBox, QPlainTextEdit, QLineEdit
from PyQt5.QtWidgets import QGridLayout, QHBoxLayout, QPushButton, QLabel, QVBoxLayout, QFileDialog, QTableWidget, QTableWidgetItem
from PyQt5.QtCore import Qt
from PyQt5 import QtGui
from scripts.styles import dark_fusion, default
from scripts.mysqlconn import mysqlcon
import os

dbcursor = mysqlcon(host="localhost", user="root", password="142857", database="canteen")
print(os.getcwd())

class app_home(QApplication):
	def __init__(self, arg):
		super().__init__(arg)

	def change_theme(self, dark):
		dark_fusion(self) if dark else default(self)

class main_window(QWidget):
	def __init__(self):
		super().__init__()
		self.setMinimumSize(640, 400)
		self.setWindowTitle("QR Catering System")

	def change_size(self, size):
		if size == "Tiny":
			self.resize(640, 400)
		elif size == "Small":
			self.resize(800, 600)
		elif size == "Large":
			self.resize(1920, 1080)
		elif size == "Medium":
			self.resize(1280, 768)

class theme_select(QComboBox):
	def __init__(self, mode):
		super().__init__()
		if mode == "theme":
			self.addItems(["Dark", "Light"])
			self.currentIndexChanged.connect(self.themeChanged)
			self.setCurrentIndex(0)
			self.themeChanged()
		else:
			self.addItems(["Tiny", "Small", "Medium", "Large"])
			self.currentIndexChanged.connect(self.sizeChanged)
			self.setCurrentIndex(0)

	def themeChanged(self):
		if self.currentIndex() == 0:
			app.change_theme(True)
		else:
			app.change_theme(False)

	def sizeChanged(self):
		if self.currentIndex() == 0:
			window.change_size("Tiny")
		elif self.currentIndex() == 1:
			window.change_size("Small")
		elif self.currentIndex() == 2:
			window.change_size("Medium")
		else:
			window.change_size("Large")

class Table(QTableWidget):
	def __init__(self, colcount, rowcount, headervals):
		super().__init__()
		self.colcount = colcount
		self.rowcount = rowcount
		self.setColumnCount(colcount)
		self.setRowCount(rowcount)
		self.setHorizontalHeaderLabels(headervals)

	def fill_from_sql(self, cmd):
		global dbcursor
		get_data = dbcursor.execute_return(cmd);
		row_index = 0
		while(len(get_data) != 0):
			row_data = get_data.pop(0)
			for j in range(self.colcount):
				item = QTableWidgetItem(str(row_data[j]))
				self.setItem(row_index, j, item)
			row_index += 1

app = app_home([])
window = main_window()

theme_layout = QHBoxLayout()
main_layout = QGridLayout()

theme_label = QLabel("Theme: ")
choose_theme = theme_select("theme")
size_label = QLabel("Window Size: ")
choose_size = theme_select("size")

menu_ind = QLabel("Menu")
menu_card_static = Table(3, dbcursor.execute_return_selective("select count(*) from menu_card;")[0], ["ID","Item Name", "Price"])
menu_card_static.fill_from_sql("select id, dish_name, price from menu_card;")

theme_layout.addWidget(theme_label)
theme_layout.addWidget(choose_theme)
theme_layout.addWidget(size_label)
theme_layout.addWidget(choose_size)

main_layout.addLayout(theme_layout, 0, 0)
main_layout.addWidget(menu_ind, 0, 1)
main_layout.addWidget(menu_card_static, 1, 1)

window.setLayout(main_layout)
window.show()

app.exec_()