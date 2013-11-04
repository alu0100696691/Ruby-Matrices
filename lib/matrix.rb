class Matrix
    @mat
    @filename
    def initialize(fn)
        @mat = 0
        @filename=fn
    end
    
    def raad_matrix
        text = File.open(@filename).read
        a = text.split(/\n\n+/)
        a = to_m(a)
    end


end
