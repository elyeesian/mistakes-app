class MistakesDatatable < Datatable
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
      mistakes.map do |mistake|
        [
          mistake.id,
          link_to(mistake.name, "/mistakes/#{mistake.id}"),
          mistake.severity, 
          mistake.created_at,
          mistake.description
        ]
      end
    end

    def columns
      @columns ||= %w['' '']
    end

    def mistakes
      @mistakes ||= fetch_mistakes
    end

    def fetch_mistakes
      Mistake.all
    end
end