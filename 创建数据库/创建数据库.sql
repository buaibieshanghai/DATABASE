   create  database bookmanage
      
      
      
      
         on primary(                

                     name='bookmanage',

                     filename='D:\bookmanage.mdf',                    

                     size=5mb,           
                     maxsize=unlimited,     

                     filegrowth=1mb         

)



log on(

                     name='bookmanage_ldf', 

                     filename='D:\bookmanage.ldf',                     

                     size=2mb,                         

                     maxsize=unlimited,        

                     filegrowth=10%               

)