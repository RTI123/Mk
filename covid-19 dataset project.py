#!/usr/bin/env python
# coding: utf-8

# In[5]:


import pandas as pd 
import numpy as np 
import matplotlib.pyplot as plt 


# In[6]:


df=pd.read_csv("covid_19_data.csv")


# ## 1.)Display top 5 row   of data set

# In[8]:


df.head(5)


# ## 2.) Display last 5  row from dataset

# In[27]:


df.tail(5)


# ## 3.)Find the null value

# In[28]:


df.isnull().sum()


# ## 4.)Show the null value using graph

# In[29]:


import seaborn as sns


# In[12]:


sns.heatmap(df.isnull())
plt.show()


# # 5.)Show the number of comform, death and recovered  case in each region

# In[13]:


df.head(1)


# In[14]:


df.groupby("Region").sum().head(20)


# In[15]:


df.groupby('Region')['Confirmed'].sum().sort_values(ascending=False).head(20)


# # 6.)Remove all the record where confirmed case is less than 10

# In[16]:


df.head(2)


# In[17]:


data=df[(~df['Confirmed']<10)]


# In[18]:


data


# # 7.)In which region max number of comformed is recored..?

# In[19]:


df.groupby('Region').Confirmed.sum().sort_values(ascending=False).head(12)


# ## 8.) Top 5  region max number of comformed is recored show by graph 

# In[45]:


df.groupby('Region').Confirmed.sum().sort_values(ascending=False).head(5).plot(kind='bar')
plt.title('Top 5 Nation wise comformed data',color='b')
plt.show()



# # 9.) In which region minimum number of death case was recorded..?

# In[20]:


df.groupby('Region').Deaths.sum().sort_values(ascending=False).tail(40)


# # 10.)How many confirmed,death, recovered case  found in india..?

# In[22]:


df[df['Region']=='India']


# In[23]:


df[df.Region=='UK'].head(4)


# # 11.)sort the entire data wrt no confirmed cases in descending order

# In[24]:


df.sort_values(by=['Confirmed'],ascending=False).head(12)


# # 12.)sort the entire data wrt no confirmed cases in descending order

# In[46]:


df.sort_values(by=['Recovered'],ascending=False).head(12)


# In[ ]:




