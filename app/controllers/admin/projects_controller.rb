module Admin
  class ProjectsController < AdminController
    before_action :set_profile, only: %i[destroy edit update].freeze
    layout "admin"

    def new
      @project = Project.new
    end

    def create
      @project = Project.new(profile_params)
      if @project.save!
        flash[:success] = "Project was successfully created."
      else
        flash[:warning] = "An error occurred, please try again."
      end
      create_technology_groups
      redirect_to admin_projects_path(@project)
    end

    def destroy
      @project.destroy
      redirect_to admin_projects_path
    end

    def edit
    end

    def update
      delete_technology_groups
      create_technology_groups
      if @project.update(profile_params)
        flash[:success] = "Project was successfully updated."
      else
        flash[:warning] = "An error occurred, please try again."
      end
      redirect_to admin_projects_path(@project)
    end

    def index
      @projects = Project.all
    end

    private

    def delete_technology_groups
      @project.technology_groups.destroy_all
    end

    def create_technology_groups
      params[:technologies].each do |key, value|
        technology = Technology.find_by(name: key)
        TechnologyGroup.create(
          technology_groupable: @project,
          technology: technology
        )
      end
    end

    def set_profile
      @project = Project.find(params[:id])
    end

    def profile_params
      params.require(:project).permit(:name, :order, :link, :image, :description, :ux)
    end
  end
end
