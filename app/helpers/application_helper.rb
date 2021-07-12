module ApplicationHelper
  def flash_class(level)
    case level
      when :success then "alert alert-success"
      when :notice then "alert alert-success"
      when :alert then "alert alert-danger"
      when :error then "alert alert-danger"
      when :warning then "alert alert-warning"
    end
  end

  def current_order
    if Order.find_by_id(session[:order_id]).nil?
      Order.new
    else
      Order.find_by_id(session[:order_id])
    end
  end
end
