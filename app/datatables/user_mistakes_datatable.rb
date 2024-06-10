class UserMistakesDatatable < Datatable
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
      user_mistakes.map do |user_mistake|
        [
          user_mistake.id,
          User.find(user_mistake.user_id).name,
          Mistake.find(user_mistake.mistake_id).name,
          user_mistake.created_at
        ]
      end
    end

    def columns
      @columns ||= %w['' '']
    end

    def user_mistakes
      @user_mistakes ||= fetch_user_mistakes
    end

    def fetch_user_mistakes
      UserMistake.all
    end
end