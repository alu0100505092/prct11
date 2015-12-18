#===Class Articulo
#*Metodo initialize
class Articulo < Publicaciones
    attr_accessor :volumen_revista, :sitio_pub, :num_pag
    def initialize(autor,titulo,f_pub,volumen_revista,sitio_pub)
        super(autor,titulo,f_pub)
        @volumen_revista = volumen_revista
        @sitio_pub = sitio_pub
    end
    
end    