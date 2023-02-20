class Book < ApplicationRecord
  
   with_options presence :true
     validates :本のタイトル
     validates :感想
  
end
