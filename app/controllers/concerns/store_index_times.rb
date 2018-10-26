 module StoreIndexTimes

  private
  def set_counter
    if session[:counter].nil? then
      @counter = 0
    else
      @counter = session[:counter]
    end

    @counter += 1
    session[:counter] = @counter

  end
end