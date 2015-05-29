module IdeasHelper

  # ------------------------------------------ Idea Object

  def all_ideas
    @all_ideas ||= Idea.all.includes(:category, :status)
  end

  def current_idea
    @current_idea ||= begin
      slug = params[:idea_slug] || params[:slug]
      idea = all_ideas.select { |idea| idea.slug == slug }.first
      return Idea.new if idea.nil?
      idea
    end
  end

end
