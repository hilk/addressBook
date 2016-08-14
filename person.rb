class Person
attr_accessor :id, :full_name, :phone_number, :city
  def initialize (params)
    @id = params[:id]
    @full_name = params[:full_name]
    @phone_number = params[:phone_number]
    @city = params[:city]
  end

end