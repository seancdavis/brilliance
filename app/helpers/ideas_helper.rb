module IdeasHelper

  # ------------------------------------------ Idea Object

  def all_ideas
    @all_ideas ||= Idea.all
  end

  def current_idea
    @current_idea ||= begin
      id = params[:idea_id] || params[:id]
      all_ideas.select { |idea| idea.id == id.to_i }.first
    end
  end

end
