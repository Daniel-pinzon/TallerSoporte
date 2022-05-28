class ConsultaController < ApplicationController

def index

    @prestamo = Prestamo.all

    @q = params[:Usuario_id]
    if @q
        @post = Prestamo.where(:usuario_id => @q)
    end
end    

end
