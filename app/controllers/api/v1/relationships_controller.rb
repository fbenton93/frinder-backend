class Api::V1::RelationshipsController < ApplicationController
  def index
    @relationships = Relationship.all
    render json: @relationships
  end

  def create
    @relationship = Relationship.new(like_params)
    if @relationship.save
      render json: @relationship, status: :created
    end
  end

  private

  def like_params
    params.require(:relationships).permit(:liker_id, :likee_id)
  end
end
