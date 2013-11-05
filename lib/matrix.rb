class Matrix_
    @mat
    @filename
    def initialize(fn)
        @mat = []
        @filename=fn
    end
    
attr_accessor :mat

    def read_matrix
        text = File.open(@filename).read
        @mat = text.split(/\n\n+/)
        @mat = to_m()
    end

    def mapmap()
        @mat.map { |r|
            r.map { |e|
                yield e
            }
        }
    end

    def to_m()
        @mat = @mat.split(/\n/)
        @mat = @mat.map { |r| r.split(/\s+/) }
        @mat = mapmap(@mat) { |x| x.to_f }
    end




end







