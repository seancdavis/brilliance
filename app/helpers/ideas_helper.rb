module IdeasHelper

  # ------------------------------------------ Idea Object

  def all_ideas
    @all_ideas ||= Idea.all.includes(:category, :status)
  end

  def current_idea
    @current_idea ||= begin
      id = params[:idea_id] || params[:id]
      idea = all_ideas.select { |idea| idea.id == id.to_i }.first
      return Idea.new if idea.nil?
      idea
    end
  end

end
