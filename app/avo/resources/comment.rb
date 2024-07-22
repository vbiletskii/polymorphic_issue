class Avo::Resources::Comment < Avo::BaseResource
  self.includes = []
  # self.search = {
  #   query: -> { query.ransack(id_eq: params[:q], m: "or").result(distinct: false) }
  # }

  def fields
    field :id, as: :idlo
    field(
      :commentable,
      as: :belongs_to,
      polymorphic_as: :commentable,
      disabled: true,
      types: [User, Admin],
      default: -> { record }
    )
  end
end
