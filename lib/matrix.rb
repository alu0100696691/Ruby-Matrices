class Matrix_T
    @mat
    @filename
    def initialize(fn)
        @filename=fn
        @mat = 0
    end
    
attr_accessor :mat

    def read_matrix
        text = File.open(@filename).read
        a = text.split(/\n\n+/)
        @mat = to_m(a)
    end

    def mapmap(a)
        a.map { |r|
            r.map { |e|
                yield e
            }
        }
    end

    def to_m(a)
        a = a.split(/\n/)
        a = a.map { |r| r.split(/\s+/) }
        a = mapmap(a) { |x| x.to_f }
    end

    def print_matrix()
        printf "| "
        for i in (0... @mat.length)
            for j in (0... @mat.length)
                if j==0
                    printf "{ "
                end
                "#{@mat[i][j]}\t"
                if j == @mat.length-1
                    printf " } , "
                end
            end
        end
        printf " |"
    end


end







