authorization do
  role :admin do
    has_permission_on [:users, :sessions], :to => [:index, :show, :new, :create, :edit, :update, :destroy]
  end

  role :manager do
    has_permission_on [:users, :sessions], :to => [:index, :show, :new, :create, :edit, :update, :destroy]
  end

  role :hr_exec do
    has_permission_on [:users, :sessions], :to => [:index, :show, :new, :create, :edit, :update, :destroy]
  end

  role :employee do
    has_permission_on [:users], :to => [:show, :new, :create, :edit, :update, :destroy]
  end

end