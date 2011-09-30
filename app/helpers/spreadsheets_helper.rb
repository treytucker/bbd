module SpreadsheetsHelper
  
  def created_at_regardless(model_obj)
    unless model_obj.nil?
      @out = special_date(model_obj.created_at)
    else
      @out = "Not uploaded yet!"
    end
    return @out
  end
  
end
