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

  # ------------------------------------------ Requirements

  def current_idea_requirement_associations
    @current_idea_requirement_associations ||= begin
      current_idea.idea_requirements.includes(:requirement)
    end
  end

  def existing_current_idea_requirements
    @existing_current_idea_requirements ||= begin
      current_idea_requirement_associations.collect(&:requirement)
    end
  end

  def missing_requirements
    @missing_requirements ||= begin
      requirements - existing_current_idea_requirements
    end
  end

  def current_idea_requirements
    @current_idea_requirements ||= begin
      r = []
      missing_requirements.each do |req|
        r << IdeaRequirement.new(:idea => current_idea, :requirement => req)
      end
      r << current_idea_requirement_associations
      r.flatten
    end
  end

  # ------------------------------------------ Ratings

  def current_idea_rating_associations
    @current_idea_rating_associations ||= begin
      current_idea.idea_ratings.includes(:rating)
    end
  end

  def existing_current_idea_ratings
    @existing_current_idea_ratings ||= begin
      current_idea_rating_associations.collect(&:rating)
    end
  end

  def missing_ratings
    @missing_ratings ||= begin
      ratings - existing_current_idea_ratings
    end
  end

  def current_idea_ratings
    @current_idea_ratings ||= begin
      r = []
      missing_ratings.each do |req|
        r << IdeaRating.new(:idea => current_idea, :rating => req)
      end
      r << current_idea_rating_associations
      r.flatten
    end
  end

  # ------------------------------------------ Forms

  def idea_redirect_field(form, step)
    form.input(
      :redirect,
      :as => :hidden,
      :input_html => { :value => idea_step_path(current_idea, step) }
    )
  end

end
