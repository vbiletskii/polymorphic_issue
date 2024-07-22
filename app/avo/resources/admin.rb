class Avo::Resources::Admin < Avo::BaseResource
  self.includes = []
  self.title = :name
  # self.search = {
  #   query: -> { query.ransack(id_eq: params[:q], m: "or").result(distinct: false) }
  # }

  def fields
    field :id, as: :number
    field :comments, as: :has_many
  end
end
