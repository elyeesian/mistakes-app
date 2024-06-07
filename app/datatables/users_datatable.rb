class UsersDatatable < Datatable
    def as_json(_options = {})
      {
        data: data,
        draw: params[:draw].to_i,
        recordsTotal: 0,
        recordsFiltered: 0
      }
    end

    private

    def data
      users.map do |user|
        [
          user.id,
          user.email,
          user.name, 
          user.created_at,
          user.mistakes.count
        ]
      end
    end

    def columns
      @columns ||= %w['' '']
    end

    def users
      @users ||= fetch_users
    end

    def fetch_users
      User.all
    end
end
