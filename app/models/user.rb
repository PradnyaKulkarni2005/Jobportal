class User < ApplicationRecord
    GENDER = {
      male: 1,
      female: 2
    }
  
    # Enum declaration to map gender to integer values
    enum :gender,GENDER
  
    # Corrected validate syntax
    validates :gender, inclusion: { in: ['male','female'], message: 'Invalid gender' }
  
   
  
  end
  