module ControllerMacros
  def login
    before(:each) do
      @request.env["devise.mapping"] = Devise.mappings
    end
  end
end
