#### Dataset Viewer 2020/11/04 Sean ####
import os
import streamlit as st
import pandas as pd
## 資料處理

import csv
##csv檔案處理

import joblib
from joblib import dump, load
#儲存與載入模型

import numpy as np

import matplotlib.pyplot as plt
## 繪圖套件

import seaborn as sns
## 熱點圖套件

from numpy.core._exceptions import _UFuncNoLoopError
##  導入_UFuncNoLoopError例外以處理

from sklearn import cluster
##導入sklearn 機器學習裡面的聚類演算法

from sklearn.model_selection import train_test_split
##導入訓練測試資料切割器  語法X_train,X_test,y_train,y_test = train_test_split(X,y, test_size=0.2) 傳入資料X,Y,測試集切割比例

def main():
	st.title("人工智慧實務 資料集展示")
	st.subheader("以Streamlit建成之資料科學範例")
	html_temp = ""
	st.markdown(html_temp, unsafe_allow_html=True)
#### Dataset Selector Start ####
	def file_selector(folder_path='./datasets'):
		filenames = os.listdir(folder_path)
		selected_filename = st.selectbox("選擇資料集", filenames)
		return os.path.join(folder_path, selected_filename), selected_filename
	filepath, filename = file_selector()
	st.write("你選擇了 {} 資料集".format(filename))
#### Dataset Selector End ####

#### Dataset Plot Strat ####
#### 調用方法->傳入X軸Label,Y軸Label,目標Label與資料本身，即可進行繪製分布圖
	def plot_Data(feature1, feature2, target, Data):
		Data_extract = pd.DataFrame(Data)
		Data_extract.drop([target], axis=1, inplace=True)
		DataX = pd.DataFrame(Data_extract, columns=Data_extract.iloc[:,:].columns.to_list())
		X = DataX[[feature1,feature2]]
		y = Data.loc[:,target].unique()
		x_min, x_max = X[feature1].min() - (X[feature1].min()/2), X[feature1].max() + (X[feature1].max()/6)
		y_min, y_max = X[feature2].min() - (X[feature2].min()/2), X[feature2].max() + (X[feature2].max()/6)
		plt.figure(2,figsize=(8,6))
		plt.clf()
		plt_list = []
		index_num = int(Data.shape[0]/len(Data.loc[:,target].unique()))
		for i in range(len(Data.loc[:,target].unique())):
			plt_list.append(plt.scatter(X[feature1][index_num*i:index_num*(i+1)], X[feature2][index_num*i:index_num*(i+1)], edgecolor='k'))
		plt.xlabel(feature1)
		plt.ylabel(feature2)
		plt.xlim(x_min, x_max)
		plt.ylim(y_min, y_max)
		plt.legend(plt_list,Data.loc[:,target].unique(),loc="upper left")
		return(plt)
#### Dataset Plot End ####


####畫出分類超平面
	def plot_kmeans(feature1,feature2,target,model,plt,Data):  #-- plot_iris + 分類class
		ax = plt.gca()
		print("ax.get_xlim() = {}, ax.get_ylim() = {}".format(ax.get_xlim(), ax.get_ylim()))
		xlim = ax.get_xlim();   ylim = ax.get_ylim()
		Data_extract = pd.DataFrame(Data)
		Data_extract.drop([target], axis=1, inplace=True)
		irisX = pd.DataFrame(Data_extract, columns=Data_extract.iloc[:,:].columns.to_list())
		X = irisX.loc[:,[feature1, feature2]]
		y = Data.loc[:,target].unique()
		xx, yy = np.meshgrid(np.linspace(*xlim, num=200), np.linspace(*ylim, num=200))
		model = model.fit(X, y)   #-- fit the data
		Z = model.predict(np.c_[xx.ravel(), yy.ravel()]).reshape(xx.shape)
		n_classes = len(np.unique(y))  #-- Create a color plot with the results
		contours = ax.contourf(xx, yy, Z, alpha=0.3, levels=np.arange(n_classes + 1) - 0.5,cmap="rainbow", zorder=1)
		return(plt)
####畫出分類超平面


#### Read Data Start ####
	df = pd.read_csv(filepath)
#### Read Data End ####



#### Show Dataset Start ####
	if st.checkbox("資料集展示"):
		number = st.number_input("輸入展示多少列(整數)", format="%i")
		st.dataframe(df.head(int(number)))
#### Show Dataset End ####



#### Show Columns Start ####
	if st.checkbox("展示各行名稱"):
		st.write(df.columns)
#### Show Columns End ####



#### Show Shape Start ####
	if st.checkbox("展示資料集之形狀(Shape)"):
		data_dim = st.radio("以下列選擇來展示維度",("列", "行", "我全都要"))
		if  data_dim == '列':
			st.write("列 = ",df.shape[0])
		elif data_dim == '行':
			st.write("行 = ",df.shape[1])
		else :
			st.write(df.shape)
#### Show Shape End ####



#### Select Columns Start ####
	if st.checkbox("選擇指定行來展示"):
		all_columns = df.columns.tolist()
		selected_columns = st.multiselect("Select", all_columns)
		new_df = df[selected_columns]
		st.dataframe(new_df)
#### Select Columns End ####



#### Show Values Start ####
	if st.checkbox("行之計數器"):
		st.text("將會依所選擇之行來計數")
		value_counts_column = st.selectbox("", df.columns.tolist())
		if value_counts_column:
			st.write(df.loc[:,value_counts_column].value_counts())
		else:
			st.write(df.iloc[:,-1].value_counts())
#### Show Values End ####


#### Show Datatypes Start ####
	if st.checkbox("資料型態展示"):
		st.write("資料型態 = ",df.dtypes)
#### Show Datatypes End ####
		


#### Show Summary Start ####
#### 	if st.checkbox("Summary"):
#### 		st.write(df.describe().T)
####  這兩行不適用於清理過的鐵達尼號資料集，比較適合數值資料，會顯示出平均、標準差等等數據
#### Show Summary End ####


#### Plot and Visualization Start ####
	
	def plot_data(type_of_plot, selected_columns_names):

		if type_of_plot == 'area':
			cust_data = df[selected_columns_names]
			st.area_chart(cust_data)

		elif type_of_plot == 'line':
			cust_data = df[selected_columns_names]
			st.line_chart(cust_data)


		elif type_of_plot == 'bar':
			cust_data = df[selected_columns_names]
			st.bar_chart(cust_data)
			st.pyplot()

			
		elif type_of_plot == 'corr':
			corr = df.corr()
			st.write(corr.style.background_gradient(cmap='coolwarm'))


		elif type_of_plot == 'kde':
			cust_plot = df[selected_columns_names].plot(kind=type_of_plot)
			st.write(cust_plot)
			fig = cust_plot.get_figure()
			st.pyplot(fig)

##		elif type_of_plot == 'Pie':
##			all_columns_names = df.columns.tolist()
##			st.write(df.iloc[:,-1].value_counts().plot.pie(autopct="%1.1f%%"))
##			st.pyplot
##	碼起來，因為還沒完成

		elif type_of_plot == 'box':
			st.text("Value Counts By Target")
			vc_plot = df.loc[:,selected_columns_names].value_counts()
			plot_box = vc_plot.plot(kind="box")
			st.write(plot_box)
			fig = plot_box.get_figure()
			st.pyplot(fig)	
			print('box end')

		elif type_of_plot == 'heatmap':
			
			st.write(sns.heatmap(df.corr(), annot=True))
			fig = sns.heatmap(df.corr(), annot=True).get_figure()
			st.pyplot(fig)
		try:
			fig.savefig('./image/{}.png'.format(type_of_plot))
		except:
			print("can't savefig")

	def dot_plot(selected_X, selected_Y):
		x_min, x_max = df[selected_X].min() - 5, df[selected_X].max() + 5
		y_min, y_max = df[selected_Y].min() - 5, df[selected_Y].max() + 5
		
		return 


#### Plot and Visualization End ####

#### Sidebar Design Start ####

	st.sidebar.title("控制板")
	st.sidebar.header("(1)選擇所需要繪製之圖型類型 --")
	all_columns_names_sidebar = df.columns.tolist()
	type_of_plot_sidebar = st.sidebar.selectbox("", ["area", "line", "box", "bar", "corr", "kde", 'heatmap', 'dot', 'distribution', 'KMeans'])
	if type_of_plot_sidebar =='box':
		st.sidebar.header("(2)選擇箱型圖欄位 --")
		selected_columns_names_sidebar = st.sidebar.selectbox("", all_columns_names_sidebar)

	elif type_of_plot_sidebar == 'heatmap':
		st.sidebar.header("(2)熱點圖無可選選項 --")
		selected_columns_names_sidebar = ''

	elif type_of_plot_sidebar == 'dot':
		st.sidebar.header("(2)選擇所需之X變量 --")
		selected_columns_names_sidebar_X = st.sidebar.selectbox("X變量", all_columns_names_sidebar)
		st.sidebar.header("(3)選擇所需之Y變量 --")
		selected_columns_names_sidebar_Y = st.sidebar.selectbox("Y變量", all_columns_names_sidebar)

	elif type_of_plot_sidebar == 'distribution':
		st.sidebar.header("(2)選擇所需之X變量 --")
		selected_columns_names_sidebar_X = st.sidebar.selectbox("X變量", all_columns_names_sidebar)
		st.sidebar.header("(3)選擇所需之Y變量 --")
		selected_columns_names_sidebar_Y = st.sidebar.selectbox("Y變量", all_columns_names_sidebar)
		st.sidebar.header("(4)選擇所需之目標欄位 --")
		selected_columns_names_sidebar_T = st.sidebar.selectbox("T變量", all_columns_names_sidebar)

	elif type_of_plot_sidebar == 'KMeans':
		st.sidebar.header("(2)選擇所需之X變量 --")
		selected_columns_names_sidebar_X = st.sidebar.selectbox("X變量", all_columns_names_sidebar)
		st.sidebar.header("(3)選擇所需之Y變量 --")
		selected_columns_names_sidebar_Y = st.sidebar.selectbox("Y變量", all_columns_names_sidebar)
		st.sidebar.header("(4)輸入要分多少群 --")
		number_KMeans = st.sidebar.number_input("輸入要分多少群", format="%i")
		st.sidebar.header("(5)選擇所需之目標欄位 --")
		selected_columns_names_sidebar_T = st.sidebar.selectbox("T變量", all_columns_names_sidebar)		
	elif type_of_plot_sidebar =='corr':
		st.sidebar.header("--若要儲存相關係數圖，請選擇Heatmap--")
		st.sidebar.header("--請點擊繪圖--")
		selected_columns_names_sidebar = None
	else:
		st.sidebar.header("(2)選擇所需之變量 --")
		selected_columns_names_sidebar = st.sidebar.multiselect("", all_columns_names_sidebar)

	if st.sidebar.checkbox("開始繪圖 --"):
		st.header("-- 繪製自訂圖形 --")
#### 確認並創建圖片資料夾
		if os.path.isdir('./image'):
			print('dir image already exist!')
		else:
			os.mkdir('image')
####
		if type_of_plot_sidebar =='dot':
			dot_plot(selected_columns_names_sidebar_X, selected_columns_names_sidebar_Y)
		elif type_of_plot_sidebar=='KMeans':
			try:
				plt_distribution = plot_Data(selected_columns_names_sidebar_X, selected_columns_names_sidebar_Y, selected_columns_names_sidebar_T, df)
				X = df.iloc[:,:-1]
				df_Y_test = df
				uni = df.iloc[:,-1].unique()
				st.write('uni = ',uni)
				for i in range(len(uni)):
					df_Y_test.replace(uni[i], i, inplace=True)
				Y = df_Y_test.loc[:,selected_columns_names_sidebar_T]
				X_train,X_test,y_train,y_test = train_test_split(X,Y, test_size=0.2)

				kmeans_fit = cluster.KMeans(n_clusters = int(number_KMeans)).fit(X_train)

				y_predict = kmeans_fit.fit_predict(X_test)
				predict_all = kmeans_fit.fit_predict(X)
				st.write("X_test =",X_test)
				st.write("PredValue = {}".format(y_predict))
				st.write("TrueValue = {}".format(y_test.values))
				st.write("AllPredValue = {}".format(predict_all))
				#### Dump請在plot圖形前，不然將會使變數減少成2維
				dump(kmeans_fit, './model/kmeans.pkl') 
				####
				plot_kmeans(selected_columns_names_sidebar_X,selected_columns_names_sidebar_Y,selected_columns_names_sidebar_T,kmeans_fit,plt_distribution,df)
				st.pyplot(plt_distribution)
				plt.savefig('./image/{}_X_{}_Y_{}.png'.format(type_of_plot_sidebar,selected_columns_names_sidebar_X,selected_columns_names_sidebar_Y))
				with open('./model/Cluster.csv', 'w', newline='') as csvfile:
					writer = csv.writer(csvfile)
					writer.writerow(['NumCluster'])
					for i in range(len(predict_all)):
						predict_str = str(predict_all[i])
						writer.writerow([predict_str])

			except ValueError:
				st.title('請選用全數值欄位之資料')
			except (TypeError,_UFuncNoLoopError):
				st.title('需選擇數值欄位唷!')
			except KeyError:
				st.title('無法使用變量值為目標值來作畫!')	

		elif type_of_plot_sidebar=='distribution':

				try:
					plt_distribution = plot_Data(selected_columns_names_sidebar_X, selected_columns_names_sidebar_Y, selected_columns_names_sidebar_T, df)

					st.pyplot(plt_distribution)
					plt.savefig('./image/{}_X_{}_Y_{}.png'.format(type_of_plot_sidebar,selected_columns_names_sidebar_X,selected_columns_names_sidebar_Y))

				except ValueError:
					st.title('同一欄位無法繪圖唷!')
				except (TypeError,_UFuncNoLoopError):
					st.title('需選擇數值欄位唷!')
				except KeyError:
					st.title('無法使用變量值為目標值來作畫!')
		else:
			plot_data(type_of_plot_sidebar,selected_columns_names_sidebar)
#### Sidebar Design End ####
	
if __name__ == '__main__':
	main()