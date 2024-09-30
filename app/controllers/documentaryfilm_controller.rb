class DocumentaryfilmController < ApplicationController
  def index
    #Captura todos los datos 
    @documentaryfilms = Documentaryfilm.all
  end

  def new
      # Captura los datos enviados en el formulario
      @documentaryfilm = Documentaryfilm.new
  end

  def create
      @documentaryfilm = Documentaryfilm.new(documentaryfilm_params)
      pp @documentaryfilm

        if @documentaryfilm.save 
            redirect_to documentaryfilm_index_path
        else
          render  :new
        end 
  end

  private

  def documentaryfilm_params
      params.require(:documentaryfilm).permit(:name, :synopsis, :director)
  end
end
