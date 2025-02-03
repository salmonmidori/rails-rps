Rails.application.routes.draw do
  get("/:user_input", { :controller => "game", :action => "play_game" })
  get("/", { :controller => "game", :action => "show_rules" })
end
