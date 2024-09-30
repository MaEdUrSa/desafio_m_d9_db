class SeriesController < ApplicationController
  def index
    #trae todo la informacion
   @series = Serie.all
 end

 def new
     #Captura los datos enviados en el formulario
     @serie = Serie.new
 end

 def create
   @serie = Serie.new(serie_params)
   pp @serie
     if  @serie.save 
          #  redirect_to root_path  
           redirect_to series_index_path
       else
         render :new
     end 
 end


private

def serie_params
   params.require(:serie).permit(:name, :synopsis, :director)
end
end
