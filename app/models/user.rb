class User < ApplicationRecord
    GENDER ={
        male:1,
        female:2
    }
    enum gender: GENDER
    validate :gender ,inclusion :{in:{"male","female"},message:}
    scope :male -> {where{gender:Male}}
    scope :female -> {where{gender:Female}}


end
