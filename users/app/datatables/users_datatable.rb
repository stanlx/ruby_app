class UsersDatatable
  delegate :params, :h, :link_to, :number_to_currency, to: :@view

  def initialize(view)
    @view = view
  end

  def as_json(options = {})
    {
      sEcho: params[:sEcho].to_i,
      iTotalRecords: User.count,
      iTotalDisplayRecords: users.total_entries,
      aaData: data
    }
  end

private

  def data
       
    users.map do |user|
      [
        #link_to(user.first_name, user),
        #h(user.first_name),
        h(user.id),
        #@personas = Persona.find_by_user_id(user.id)
        h(Persona.find_by_user_id(user.id).id),
        #@user.personas.map do |persona|
        #  [
        #    h(persona.id),
        #  ]
        #end,
        #h(user.id),
        if user.application_submit_date.nil?
          h("")
        else
          h(user.application_submit_date.strftime("%B %e, %Y %l:%M:%S %P"))
        end
      ]
    end
  end

  def users
    @users ||= fetch_users
  end

  def fetch_users
    users = User.order("#{sort_column} #{sort_direction}")
    users = users.page(page).per_page(per_page)
    if params[:sSearch].present?
      users  = users.where("first_name like :search or gender like :search", search: "%#{params[:sSearch]}%")
    end
    users
  end

  def page
    params[:iDisplayStart].to_i/per_page + 1
  end

  def per_page
    params[:iDisplayLength].to_i > 0 ? params[:iDisplayLength].to_i : 10
  end

  def sort_column
    columns = %w[first_name gender application_submit_date]
    columns[params[:iSortCol_0].to_i]
  end

  def sort_direction
    params[:sSortDir_0] == "desc" ? "desc" : "asc"
  end
end


