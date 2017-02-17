get '/meals' do
  @meals = Meal.all
  erb :'meals/index'
end

get '/meals/new' do

  erb :'meals/new'
end

get '/meals/:id' do
  @meal = Meal.find_by_id(params[:id])
  erb :'meals/show'
end

post '/meals' do
  currentuser=User.first
  new_meal = currentuser.meals.new(params["meal"])

  param["ingredient"].each do |ingredient_params_array|
    Ingredient.create(ingredient_params_array[1])
  end
  if new_meal.save
    redirect "/meals/#{new_meal.id}"
  else
    erb :'/meals/new'
  end

end

