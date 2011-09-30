module WidgetsHelper
  
  def active(model_obj)
    arr = []
    if model_obj.good_read_active == true
      arr << "Good Reads"
    end
    if model_obj.contact_active == true
      arr << "Contacts"
    end
    if model_obj.about_us_active == true
      arr << "About Us"
    end
    if model_obj.current_deal_active == true
      arr << "Current Deal"
    end
    if model_obj.recent_deal_active == true
      arr << "Recent Deals"
    end
    if model_obj.privacy_policy_active == true
      arr << "Privacy Policy"
    end
    if model_obj.for_business_active == true
      arr << "For Business"
    end
    if model_obj.terms_of_service_active == true
      arr << "Terms of Service"
    end
    if arr.empty?
      arr = ["None"]
    end
      return arr
  end
  
end