module MoviesHelper
    def directionOf(column)
        if params[:sort] == column && params[:direction] == "asc" ? "desc" : "asc"
        end
    end
end
